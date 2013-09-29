## basics
#
: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}


## jobs
#
set -o notify


## history
#
export HISTCONTROL=ignoredups
export HISTFILESIZE=1000000000
export HISTSIZE=1000000


## path
#
PATH="$PATH:./node_modules/.bin:/sbin:/usr/sbin:$HOME/src/natural-bin:$HOME/.local/bin:/usr/local/share/npm/bin"



## pager
#
if test -n "$(command -v less)" ; then
    PAGER="less -FirSwX"
    MANPAGER="less -FiRswX"
else
    PAGER=more
    MANPAGER="$PAGER"
fi
export PAGER MANPAGER


## grep
#
export GREP_OPTIONS="--color=auto --binary-files=without-match --directories=skip"


## other exports
#
export BROWSER=/usr/bin/google-chrome


## aliases
#
alias df="df -H"
if [ "$UNAME" != "Darwin" ]; then
    alias ll="ls -lh --color=auto --group-directories-first"
else
    alias ll="ls -lh"
fi
alias l.="ls -d .*"
cdpy () {
    cd `whichpy "$1" | xargs dirname | xargs`
}


## completion
#
test -r /etc/bash_completion && . /etc/bash_completion
if [ -f /opt/local/etc/bash_completion ]; then
. /opt/local/etc/bash_completion
fi


## local environment variables if available
#
test -r $HOME/.local.env && . $HOME/.local.env


## exit if not interactive
#
test -z "$PS1" && return


## prompt
#
if [ "$TERM" == "xterm-256color" ] || [ "$COLORTERM" == "gnome-terminal" ]
then
    if [ "$UNAME" != "Darwin" ]; then
        PS1='\[\033[01;32m\]\u@\h:\[\033[00m\]\[\033[01;34m\]\w \[\033[00m\] '
    else
        PS1='\[\033[01;30m\]\u@\h:\[\033[00m\]\[\033[00;31m\]\w \[\033[00m\] '
    fi
else
    PS1='\u@\h:\w '
fi


## simplify prompt if running within emacs
#
if [ "$INSIDE_EMACS" ]
then
    PS1="$ "
    PROMPT_COMMAND=""
fi


## dircolors
#
if [ "$TERM" != "dumb" ]; then
    if [ "$UNAME" != "Darwin" ]; then
        eval "`dircolors -b`"
        alias ls="ls --color=auto"
    else
        export CLICOLOR=1
        export LSCOLORS=ExFxCxDxBxegedabagacad
    fi
fi


## options
#
shopt -s checkwinsize
shopt -s cdspell
shopt -s extglob


## disable tilde expansion
#
_expand() {
    return 0
}
