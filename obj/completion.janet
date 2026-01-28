(def compl/bash-completion
  ``
  _jref_things() {
      COMPREPLY=( $(compgen -W "$(jref --raw-all)" -- ${COMP_WORDS[COMP_CWORD]}) );
  }
  complete -F _jref_things jref
  ``)

(def compl/fish-completion
  ``
  function __jref_complete_things
    if not test "$__jref_things"
      set -g __jref_things (jref --raw-all)
    end

    printf "%s\n" $__jref_things
  end

  complete -c jref -a "(__jref_complete_things)" -d 'things'
  ``)

(def compl/zsh-completion
  ``
  #compdef jref

  _jref() {
      local matches=(`jref --raw-all`)
      compadd -a matches
  }

  _jref "$@"
  ``)

(defn compl/maybe-handle-dump-completion
  [opts]
  # this makes use of the fact that print returns nil
  (not
    (cond
      (opts :bash-completion)
      (print compl/bash-completion)
      #
      (opts :fish-completion)
      (print compl/fish-completion)
      #
      (opts :zsh-completion)
      (print compl/zsh-completion)
      #
      true)))

