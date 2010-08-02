if [ -r ~/.bashrc ]; then
    source ~/.bashrc
fi

export CLICOLOR="yes"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:$HOME/bin
export MANPATH=/opt/local/share/man:$MANPATH
export HISTSIZE=1000000
export HISTFILESIZE=1000000000
export HISTCONTROL=ignoreboth
shopt -s cmdhist
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n"

MACPORTS_EMACS=/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient
EMACS_APP=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient

if [ -x $MACPORTS_EMACS ]; then
    export EDITOR="$MACPORTS_EMACS -c"
elif [ -x $EMACS_APP ]; then
    export EDITOR="$EMACS_APP -c"
else
    export EDITOR="/usr/bin/emacsclient -c"
fi
