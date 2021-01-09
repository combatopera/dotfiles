PATH="$PATH:$HOME/opt/venv3/bin:$HOME/opt/venv2/bin" # Do not override system python.

. $HOME/.profile
for p in $HOME/Library/Python/*/bin; do PATH="$p:$PATH"; done
PATH="$HOME/.local/bin:$PATH" # Fix Debian bug.

export GOPATH=$HOME/opt/go
export EDITOR=vim

which docker-machine >/dev/null && eval $(docker-machine env default)

if [[ bash ]] 2>/dev/null && [[ "$(pstree -s $$)" != *---cron---* && $(($(date +%s) - 10#0$($(which gstat || which stat) -c %Y ~/var/last-upgrade))) -ge $((60*60*24*7)) ]]; then
    figlet "It's time for an upgrade." >&2
else
    true
fi
