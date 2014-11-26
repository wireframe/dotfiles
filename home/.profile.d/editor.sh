if [ -f /usr/local/bin/subl ]; then
  export EDITOR='subl'
else
  export EDITOR="vim"
fi

alias v="vim"
alias s="subl"
alias e="${EDITOR}"
