alias cd..='cd ..'

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias hg='hg --color always'
alias less='less -FR'

function whereami {
    echo "$(dirname "$(readlink -f "$BASH_SOURCE")")"
}
. "$(whereami)/../r3-bin/git_completion"
