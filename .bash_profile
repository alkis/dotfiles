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

MACPORTS_EMACSAPP=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
MACPORTS_EMACS=/opt/local/bin/emacsclient

if [ -x $MACPORTS_EMACSAPP ]; then
    export EDITOR="$MACPORTS_EMACSAPP -c"
elif [ -x $MACPORTS_EMACS ]; then
    export EDITOR="$MACPORTS_EMACS -c"
else
    export EDITOR="/usr/bin/emacsclient -c"
fi
