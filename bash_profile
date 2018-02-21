. $HOME/.profile

for p in $HOME/projects/*; do echo -n -; done >&2
/bin/echo -en '\r' >&2
PATH="$(PYTHONPATH=~/projects/aridity python3 -c 'import sys, os, aridity
def g():
    for project in sys.argv[1:]:
        path = os.path.join(project, "project.arid")
        if os.path.exists(path):
            context = aridity.Context()
            with aridity.Repl(context) as repl:
                repl.printf("executable = false")
                repl.printf(". %s", path)
            if context.resolved("executable").value:
                yield project
        print("+", end = "", file = sys.stderr)
print(os.pathsep.join(g()))' $HOME/projects/*):$PATH"
echo >&2

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
