export VENV2_PATH=$HOME/opt/venv2 VENV3_PATH=$HOME/opt/venv3
PATH="$PATH:$VENV3_PATH/bin:$VENV2_PATH/bin" # Do not override system python.

. $HOME/.profile
for p in $HOME/Library/Python/*/bin; do PATH="$p:$PATH"; done

export GOPATH=$HOME/opt/go
export EDITOR=vim

if [[ bash ]] 2>/dev/null && [[ "$(pstree -s $$)" != *---cron---* && $(($(date +%s) - 10#0$($(which gstat || which stat) -c %Y ~/var/last-upgrade))) -ge $((60*60*24*7)) ]]; then
    figlet "It's time for an upgrade." >&2
else
    true
fi
