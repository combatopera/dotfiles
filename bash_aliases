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
. "$(whereami)"/../*/git_completion

function ddg {
    w3m "https://duckduckgo.com/?q=$(python3 -c "from sys import argv; from urllib.parse import quote_plus
print(quote_plus(' '.join(argv[1:])))" "$@")"
}
