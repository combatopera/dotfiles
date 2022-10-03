alias cd..='cd ..'

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

alias rm='rm -i'
alias mv='mv -iv'
alias cp='cp -i'

alias hg='hg --color always'
alias less='less -FR'

. ~/.config/pyven/scripts

eval "$(bashrc "$PS1" $SHLVL)"

function ddg {
    w3m "https://duckduckgo.com/?q=$(python3 -c "from sys import argv; from urllib.parse import quote_plus
print(quote_plus(' '.join(argv[1:])))" "$@")"
}

function ? {
    local status=$? font
    for font in big smblock; do
        toilet --font $font --gay $status 2>/dev/null && break
    done
}

taskding $$ &
