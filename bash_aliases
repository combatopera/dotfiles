alias cd..='cd ..'

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias hg='hg --color always'
alias less='less -FR'

. "$(git-completion-path)"

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

function aws {
    "$(which aws)" --profile "$INTERACTIVE_AWS_PROFILE" "$@"
}

function sops {
    AWS_PROFILE="$INTERACTIVE_AWS_PROFILE" "$(which sops)" "$@"
}

function fx {
    echo -n "\\[$(for x in "$@"; do echo "$x"; done | tput -S)\\]"
}

PS1="$(fx rev 'setaf 1')$SHLVL$(fx sgr0)$PS1"

taskding $$ &
