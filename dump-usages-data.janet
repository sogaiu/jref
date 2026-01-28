(import ./src/things :as things)

(def ext-idx (- (inc (length ".janet"))))

(with [of (file/temp)]
  # start things table
  (file/write of 
              "(def things\n"
              "  @{\n")
  # add entries to things table
  (each fpath (sort (os/dir "data"))
    (def name-from-fpath (string/slice fpath 0 ext-idx))
    (def pre-name
      (if (string/has-prefix? "0." name-from-fpath)
          (string "_" (string/slice name-from-fpath 2))
          name-from-fpath))
    (def name (things/unescape-file-name pre-name))
    (def content (slurp (string "data/" fpath)))
    (file/write of 
                `"` name `"` "\n"
                "````````\n"
                (string/trimr content) "\n"
                "````````\n"))
  # end things table
  (file/write of "  })\n")
  #
  (file/flush of)
  (file/seek of :set 0)
  (spit "src/usages.janet" (file/read of :all)))

