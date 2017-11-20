. $HOME/.profile

for p in $HOME/projects/*; do echo -n -; done
/bin/echo -en '\r'
for p in $HOME/projects/*; do
    [ -e "$p/project.arid" ] && {
        [ true = "$(~/projects/aridity/arid-config "$p/project.arid" executable 2>/dev/null)" ] && PATH="$p:$PATH"
    }
    echo -n +
done
echo

export JAVA_HOME=$HOME/opt/jdk1.8
export MINICONDA_HOME=$HOME/opt/miniconda
export MINICONDA3_HOME=$HOME/opt/miniconda3
export EDITOR=vim
export STEPWISE_ECLIPSE_WORKSPACE=$HOME/workspace

#export http_proxy=http://localhost:3128/
#export https_proxy=http://localhost:3128/
#export ftp_proxy=http://localhost:3128/

if [[ bash ]] 2>/dev/null; then
[[ "$(pstree -s $$)" = *---cron---* ]] || {
    [[ $(($(date +%s) - 10#0$(stat -c %Y ~/var/last-upgrade))) -ge $((60*60*24*7)) ]] && {
        figlet "It's time for an upgrade." >&2
    }
}
else
    true
fi
