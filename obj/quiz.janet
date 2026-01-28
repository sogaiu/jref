(import ./location-with-unreadable :prefix "")
(import ./jipper :prefix "")
(import ./print :prefix "")
(import ./random :prefix "")
(import ./tests :prefix "")

########################################################################

(defn qu/deprintf
  [fmt & args]
  (when (os/getenv "JREF_VERBOSE")
    (eprintf fmt ;args)))

# outline
#
# * (rewrite-test test-zloc)
#   * (find-things test-zloc)
#     * (rnd/choose things)
#       * (blank-thing thing-zloc)

# XXX: make what types of things to find configurable?
(defn qu/find-things
  [test-zloc]
  (def results @[])
  # compare against this to determine whether still a descendant
  (def test-path-len
    (length (j/path test-zloc)))
  (var curr-zloc test-zloc)
  (while (not (j/end? curr-zloc))
    (match (j/node curr-zloc)
      [:symbol]
      (array/push results curr-zloc)
      [:number]
      (array/push results curr-zloc)
      [:keyword]
      (array/push results curr-zloc)
      [:constant]
      (array/push results curr-zloc)
      [:string]
      (array/push results curr-zloc)
      [:long-string]
      (array/push results curr-zloc))
    (set curr-zloc
         (j/df-next curr-zloc))
    # XXX: not 100% sure whether this is something that can be relied on
    (when (or (j/end? curr-zloc)
              # no longer a descendant of test-zloc
              # XXX: verify relying on this is solid
              (<= (length (j/path curr-zloc))
                  test-path-len))
      (break)))
  #
  results)

(comment

  (def src
    ``
    ~(sequence "#"
               (capture (to "=>"))
               "=>"
               (capture (thru -1)))
    ``)

  (map |(j/node $)
       (qu/find-things (-> (lwu/par src)
                        j/zip-down)))
  # =>
  '@[(:symbol @{:bc 3 :bl 1 :ec 11 :el 1} "sequence")
     (:string @{:bc 12 :bl 1 :ec 15 :el 1} "\"#\"")
     (:symbol @{:bc 13 :bl 2 :ec 20 :el 2} "capture")
     (:symbol @{:bc 22 :bl 2 :ec 24 :el 2} "to")
     (:string @{:bc 25 :bl 2 :ec 29 :el 2} "\"=>\"")
     (:string @{:bc 12 :bl 3 :ec 16 :el 3} "\"=>\"")
     (:symbol @{:bc 13 :bl 4 :ec 20 :el 4} "capture")
     (:symbol @{:bc 22 :bl 4 :ec 26 :el 4} "thru")
     (:number @{:bc 27 :bl 4 :ec 29 :el 4} "-1")]

  )

(defn qu/blank-thing
  [thing-zloc blank-char-str]
  (def node-type
    (get (j/node thing-zloc) 0))
  (var blanked-item nil)
  (var new-thing-zloc nil)
  (cond
    (or (= :symbol node-type)
        (= :constant node-type)
        (= :number node-type)
        (= :string node-type)
        (= :long-string node-type)
        (= :keyword node-type))
    (set new-thing-zloc
         (j/edit thing-zloc
                 |(let [original-item (get $ 2)]
                    (set blanked-item original-item)
                    [node-type
                     (get $ 1)
                     (string/repeat blank-char-str
                                    (length original-item))])))
    #
    (do
      (eprintf "Unexpected node-type: %s" node-type)
      (set new-thing-zloc thing-zloc)))
  [new-thing-zloc blanked-item])

(comment

  (def src
    ``
    ~(sequence "#"
               (capture (to "=>"))
               "=>"
               (capture (thru -1)))
    ``)

  (def thing-zloc
    (first (qu/find-things (-> (lwu/par src)
                            j/zip-down))))

  (def blank-char-str "_")

  (def [new-thing blanked-item]
    (qu/blank-thing thing-zloc blank-char-str))

  (j/node new-thing)
  # =>
  [:symbol @{:bc 3 :bl 1 :ec 11 :el 1} "________"]

  blanked-item
  # =>
  "sequence"

  (->> (qu/blank-thing thing-zloc blank-char-str)
       first
       j/root
       lwu/gen)
  # =>
  ``
  ~(________ "#"
             (capture (to "=>"))
             "=>"
             (capture (thru -1)))
  ``

  )

(defn qu/rewrite-test-zloc
  [test-zloc]
  (qu/deprintf "test:")
  (qu/deprintf (lwu/gen (j/node test-zloc)))
  # find how many "steps" back are needed to "get back" to original spot
  (var steps 0)
  (var chosen-thing-zloc nil)
  (def test-node-type
    (get (j/node test-zloc) 0))
  # might change depending on what symbols the test has in it
  (var blank-char-str "_")
  (cond
    (or (= :string test-node-type)
        (= :long-string test-node-type)
        (= :keyword test-node-type)
        (= :constant test-node-type)
        (= :number test-node-type))
    (do
      (qu/deprintf "test was a %s" test-node-type)
      (set chosen-thing-zloc test-zloc))
    #
    (get {:tuple true
          :bracket-tuple true
          :quote true
          :quasiquote true
          :splice true
          :struct true
          :table true} test-node-type)
    (let [things (qu/find-things test-zloc)]
      # XXX
      (qu/deprintf "test was a %s" test-node-type)
      # XXX
      (qu/deprintf "Number of things found: %d" (length things))
      (when (empty? things)
        # XXX
        (eprint "Failed to find a thing")
        (break [nil nil]))
      # learn the names used to choose good blanking char
      (def names @{})
      (each thng things
        (def a-node
          (j/node thng))
        (def [a-type _ a-name] a-node)
        (when (= :symbol a-type)
          (put names (get thng 2) true))
        (qu/deprintf (lwu/gen a-node)))
      # if necessary, try to find a non-problematic char
      (when (get names blank-char-str)
        (each cand-char-str ["?" "-" "~"]
          (when (not (get names cand-char-str))
            (set blank-char-str cand-char-str)
            (break))))
        (set chosen-thing-zloc
           (rnd/choose things))
      (qu/deprintf "chosen: %s" (lwu/gen (j/node chosen-thing-zloc))))
    #
    (do
      (eprint "Unexpected node-type:" test-node-type)
      (break [nil nil])))
  # find how many steps away we are from test-zloc's node
  (var curr-zloc chosen-thing-zloc)
  # XXX: compare (attrs ...) results instead of gen / node
  (def test-str
    (lwu/gen (j/node test-zloc)))
  (while curr-zloc
    # XXX: expensive?
    # XXX: compare (attrs ...) results instead -- should be faster
    #      attrs should be unique inside the tree(?)
    (when (= (lwu/gen (j/node curr-zloc))
             test-str)
      (break))
    (set curr-zloc
         (j/df-prev curr-zloc))
    (++ steps))
  # XXX
  (qu/deprintf "steps: %d" steps)
  # XXX: check not nil?
  (var [curr-zloc blanked-item]
    (-> chosen-thing-zloc
        (qu/blank-thing blank-char-str)))
  # get back to "test-zloc" position
  (for i 0 steps
    (set curr-zloc
         (j/df-prev curr-zloc)))
  # XXX
  #(deprintf "curr-zloc: %M" curr-zloc)
  #
  [curr-zloc blanked-item blank-char-str])

(defn qu/rewrite-test
  [test-zloc]
  (when-let [[rewritten-zloc blanked-item blank-char-str]
             (qu/rewrite-test-zloc test-zloc)]
    [(->> rewritten-zloc
         j/root
         lwu/gen)
     blanked-item
     blank-char-str]))

(comment

  (def src
    ``
    (peg/match ~(error "a")
               "a")
    ``)

  (def [result blanked-item blank-char-str]
    (qu/rewrite-test (->> (lwu/par src)
                       j/zip-down)))

  (or (= "peg/match" blanked-item)
      (= "error" blanked-item)
      (= "\"a\"" blanked-item))
  # =>
  true

  (or (= result
         ``
         (_________ ~(error "a")
                    "a")
         ``)
      (= result
         ``
         (peg/match ~(_____ "a")
                    "a")
         ``)
      (= result
         ``
         (peg/match ~(error ___)
                    "a")
         ``)
      (= result
         ``
         (peg/match ~(error "a")
                    ___)
         ``))
  # =>
  true

  )

########################################################################

(defn qu/handle-eval-failure
  [resp e]
  (print "Sorry, failed to evaluate your answer.")
  (print)
  (print "The error I got was:")
  (print)
  (printf "%p" e)
  (print)
  (print "I tried to evaluate the following:")
  (print)
  (print resp))

(defn qu/handle-eval-comparison
  [prog-ans user-ans]
  (if (deep= prog-ans user-ans)
    (do
      (print "Nice, our answers both evaluate to:")
      (print)
      (pr/print-nicely (string/format "%m" prog-ans))
      true)
    (do
      (printf "Sorry, our answers evaluate differently.")
      (print)
      (print "My answer evaluates to:")
      (print)
      (pr/print-nicely (string/format "%m" prog-ans))
      (print)
      (print "Your answer evaluates to:")
      (print)
      (pr/print-nicely (string/format "%m" user-ans))
      false)))

(defn qu/handle-plain-response
  [ans resp]
  (print "My answer is:")
  (print)
  (pr/print-nicely ans)
  (print)
  (print "Your answer is:")
  (print)
  (pr/print-nicely resp)
  (print)
  (when (deep= ans resp)
    (print "Yay, the answers agree :)")
    (break true))
  (print "Our answers differ, but perhaps yours works too.")
  (print)
  (try
    (let [evaled-ans (eval-string ans)
          result (eval-string resp)]
      (qu/handle-eval-comparison evaled-ans result))
    ([e]
      (qu/handle-eval-failure resp e)
      false)))

(defn qu/handle-want-to-quit
  [buf]
  (when (empty? (string/trim buf))
    (print "Had enough?  Perhaps on another occasion then.")
    #
    true))

(defn qu/validate-response
  [buf]
  (try
    (do
      (parse buf)
      (string/trim buf))
    ([e]
      (print)
      (printf "Sorry, I didn't understand your response: %s"
              (string/trim buf))
      (print)
      (print "I got the following error:")
      (print)
      (printf "%p" e)
      nil)))

(defn qu/thing-plain-quiz
  [content]
  # extract first set of tests from content
  (def tests
    (tests/extract-first-test-set content))
  (when (empty? tests)
    (print "Sorry, didn't find any material to make a quiz from.")
    (break nil))
  # choose a question and answer pair
  (let [[ques ans] (rnd/choose tests)
        trimmed-ans (string/trim ans)]
    (print "# What does the following evaluate to?")
    (print)
    # show the question
    (pr/print-nicely ques)
    (print "# =>")
    # ask for an answer
    (def buf
      (getline ""))
    (when (qu/handle-want-to-quit buf)
      (break nil))
    # does the response make some sense?
    (def resp
      (qu/validate-response buf))
    (unless resp
      (break nil))
    # improve perceptibility
    (print)
    (pr/print-separator)
    (print)
    #
    (qu/handle-plain-response trimmed-ans resp)))

(defn qu/handle-fill-in-response
  [ques blank-ques blanked-item blank-char-str ans resp]
  (print "One complete picture is: ")
  (print)
  (pr/print-nicely ques)
  (print "# =>")
  (pr/print-nicely ans)
  (print)
  (print "So one value that works is:")
  (print)
  (pr/print-nicely blanked-item)
  (print)
  (print "Your answer is:")
  (print)
  (pr/print-nicely resp)
  (print)
  (when (deep= blanked-item resp)
    (print "Yay, the answers agree :)")
    (break true))
  (print "Our answers differ, but perhaps yours works too.")
  (print)
  # eval both sets of code and compare results
  (let [indeces (string/find-all blank-char-str blank-ques)
        head-idx (first indeces)
        tail-idx (last indeces)]
    (def resp-code
      (string (string/slice blank-ques 0 head-idx)
              resp
              (string/slice blank-ques (inc tail-idx))))
    (try
      (let [evaled-ans (eval-string ans)
            result (eval-string resp-code)]
        (qu/handle-eval-comparison evaled-ans result))
      ([e]
        (qu/handle-eval-failure resp-code e)
        false))))

(defn qu/thing-fill-in-quiz
  [content]
  # extract first set of tests from content
  (def test-zloc-pairs
    (tests/extract-first-test-set-zlocs content))
  (when (empty? test-zloc-pairs)
    (print "Sorry, didn't find any material to make a quiz from.")
    (break nil))
  # choose a question and answer, then make a blanked question
  (let [[ques-zloc ans-zloc]
        (rnd/choose test-zloc-pairs)
        [blank-ques-zloc blanked-item blank-char-str]
        (qu/rewrite-test-zloc ques-zloc)]
    # XXX: a cheap work-around...evidence of a deeper issue?
    (unless blank-ques-zloc
      (print "Sorry, drew a blank...take a deep breath and try again?")
      (break nil))
    (let [ques (tests/indent-node-gen ques-zloc)
          blank-ques (tests/indent-node-gen blank-ques-zloc)
          trimmed-ans (string/trim (tests/indent-node-gen ans-zloc))]
      # show the question
      (pr/print-nicely blank-ques)
      (print "# =>")
      (pr/print-nicely trimmed-ans)
      (print)
      # ask for an answer
      (def buf
        (getline (string/format "What value could work for the `%s`s ? "
                                blank-char-str)))
      (when (qu/handle-want-to-quit buf)
        (break nil))
      # does the response make some sense?
      (def resp
        (qu/validate-response buf))
      (unless resp
        (break nil))
      # improve perceptibility
      (print)
      (pr/print-separator)
      (print)
      #
      (qu/handle-fill-in-response ques blank-ques blanked-item blank-char-str
                               trimmed-ans resp))))

(defn qu/thing-quiz
  [content]
  (def quiz-fn
    (rnd/choose [qu/thing-plain-quiz
                 qu/thing-fill-in-quiz]))
  (quiz-fn content))

