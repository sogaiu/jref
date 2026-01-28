(import ./print :prefix "")
(import ./random :prefix "")
(import ./tests :prefix "")
(import ./usages :prefix "")

# wanted an escaping scheme that satisfied the following constraints:
#
# * works with janet symbols
# * works with windows and *nix
# * can be easily adapted for use in urls
# * relatively readable / typable
# * relatively brief
#
# result was:
#
# * use square brackets to surround abbreviated character entity ref names
# * thus:
#   * / -> [sol]
#   * < -> [lt]
#   * > -> [gt]
#   * * -> [ast]
#   * % -> [per]
#   * : -> [col]
#   * ? -> [que]
(def things/sym-char-escapes
  {"/" "sol"
   "<" "lt"
   ">" "gt"
   "*" "ast"
   "%" "per"
   ":" "col"
   "?" "que"})

(defn things/escape-sym-name
  [sym-name]
  (def esc-grammar
    (peg/compile
      ~(accumulate
         (some
           (choice (replace (capture (set "/<>*%:?"))
                            ,(fn [char-str]
                               (string "["
                                       (get things/sym-char-escapes char-str)
                                       "]")))
                   (capture 1))))))
  (first (peg/match esc-grammar sym-name)))

(comment

  (things/escape-sym-name "string/replace")
  # =>
  "string[sol]replace"

  (things/escape-sym-name "<")
  # =>
  "[lt]"

  (things/escape-sym-name "->")
  # =>
  "-[gt]"

  (things/escape-sym-name "import*")
  # =>
  "import[ast]"

  (things/escape-sym-name "%=")
  # =>
  "[per]="

  (things/escape-sym-name "uncommon:symbol")
  # =>
  "uncommon[col]symbol"

  (things/escape-sym-name "nan?")
  # =>
  "nan[que]"

  )

(def things/sym-char-unescapes
  (invert things/sym-char-escapes))

(defn things/unescape-file-name
  [file-name]
  (def unesc-grammar
    (peg/compile
      ~(accumulate
         (some
           (choice (replace (sequence "["
                                      (capture (to "]"))
                                      "]")
                            ,things/sym-char-unescapes)
                   (capture 1))))))
  (first (peg/match unesc-grammar file-name)))

(comment

  (things/unescape-file-name "string[sol]replace")
  # =>
  "string/replace"

  (things/unescape-file-name "[lt]")
  # =>
  "<"

  (things/unescape-file-name "-[gt]")
  # =>
  "->"

  (things/unescape-file-name "import[ast]")
  # =>
  "import*"

  (things/unescape-file-name "[per]=")
  # =>
  "%="

  (things/unescape-file-name "uncommon[col]symbol")
  # =>
  "uncommon:symbol"

  (things/unescape-file-name "nan[que]")
  # =>
  "nan?"

  )

(def things/aliases-table
  # XXX: what's missing?
  {"|" "fn"
   "~" "quasiquote"
   "'" "quote"
   ";" "splice"
   "," "unquote"})

(defn things/all-things
  []
  (filter |(not (string/has-prefix? "_" $))
          (keys usages/things)))

(defn things/choose-random-thing
  []
  (rnd/choose (things/all-things)))

# XXX: not sure if this quoting will work on windows...
(defn things/print-escaped-maybe
  [a-str]
  (if (peg/match ~(to (set "'*;<>|~")) a-str)
    (printf `"%s"` a-str)
    (print a-str)))

(comment

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (things/print-escaped-maybe "'"))
    buf)
  # =>
  @``
   "'"

   ``

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (things/print-escaped-maybe "*out*"))
    buf)
  # =>
  @``
   "*out*"

   ``

  (do
    (def buf @"")
    (with-dyns [*out* buf]
      (things/print-escaped-maybe "map"))
    buf)
  # =>
  @``
   map

   ``

  )

(def things/special-forms-table
  {"def" true
   "var" true
   "fn" true
   "do" true
   "quote" true
   "if" true
   "splice" true
   "while" true
   "break" true
   "set" true
   "quasiquote" true
   "unquote" true
   "upscope" true})

(defn things/usages
  [content &opt limit]
  # extract first set of tests from content
  (def tests
    (tests/extract-first-test-set content))
  (when (empty? tests)
    (break [nil
            "Sorry, didn't find any material to make a quiz from."]))
  (default limit (length tests))
  (def buf @"")
  (with-dyns [*out* buf]
      # question and answer pairs
      (each [ques ans] (array/slice tests 0
                                    (min limit (length tests)))
        (def trimmed-ans (string/trim ans))
        # show the question
        (pr/print-nicely-mono ques)
        (print "# =>")
        (pr/print-nicely-mono ans)
        (print)))
  #
  [true buf])

