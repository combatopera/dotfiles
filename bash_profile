. $HOME/.profile
for p in $HOME/Library/Python/*/bin; do PATH="$p:$PATH"; done

export GOPATH=$HOME/opt/go
export EDITOR=vim

# FIXME LATER: Should be a calendar week.
if [[ bash ]] 2>/dev/null && [[ "$(pstree -s $$)" != *---cron---* && $(($(date +%s) - 10#0$($(which gstat || which stat) -c %Y ~/var/last-upgrade))) -ge $((60*60*24*7)) ]]; then
    figlet "It's time for an upgrade." >&2
else
    true
fi

export LG_WEBOS_TV_SDK_HOME=~/opt/webOS_TV_SDK
export WEBOS_CLI_TV=$LG_WEBOS_TV_SDK_HOME/CLI/bin
export PATH="$PATH:$WEBOS_CLI_TV"
