. $HOME/.profile

for p in $HOME/projects/*; do
    [ -e "$p/project.arid" ] || continue
    [ true = "$(~/projects/aridity/arid-config "$p/project.arid" executable 2>/dev/null)" ] && PATH="$p:$PATH"
done
export JAVA_HOME=$HOME/opt/jdk1.8
export MINICONDA_HOME=$HOME/opt/miniconda
export MINICONDA3_HOME=$HOME/opt/miniconda3
export EDITOR=vim
export STEPWISE_ECLIPSE_WORKSPACE=$HOME/workspace

#export http_proxy=http://localhost:3128/
#export https_proxy=http://localhost:3128/
#export ftp_proxy=http://localhost:3128/

[[ "$(pstree -s $$)" = *---cron---* ]] || {
    [[ $(($(date +%s) - $(stat -c %Y ~/var/last-upgrade))) -ge $((60*60*24*7)) ]] && {
        figlet "It's time for an upgrade." >&2
    }
}
