alias cd..='cd ..'

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias hg='hg --color always'
alias less='less -FR'

. "$(git-completion-path)" # FIXME: This is altogether too slow.

function ddg {
    w3m "https://duckduckgo.com/?q=$(python3 -c "from sys import argv; from urllib.parse import quote_plus
print(quote_plus(' '.join(argv[1:])))" "$@")"
}

function ? {
    toilet --font big --gay $?
}

function aws {
    "$(which aws)" --profile "$INTERACTIVE_AWS_PROFILE" "$@"
}

function sops {
    AWS_PROFILE="$INTERACTIVE_AWS_PROFILE" "$(which sops)" "$@"
}

PS1="$SHLVL$PS1"

taskding $$ &
