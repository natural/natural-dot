

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
PATH="$PATH:/sbin:/usr/sbin:$HOME/bin:$HOME/.local/bin"



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


## aliases
#
alias df="df -H"
alias ll="ls -lh --color=auto --group-directories-first"
alias l.="ls -d .*"


## completion
#
test -r /etc/bash_completion && . /etc/bash_completion


## local files if available
#
test -r $HOME/.local.python && . $HOME/.local.python
test -r $HOME/.local.java && . $HOME/.local.java

## exit if not interactive
#
test -z "$PS1" && return


## prompt
#
if [ "$TERM" == "xterm-256color" ] || [ "$COLORTERM" == "gnome-terminal" ]
then
    PS1='\[\033[01;32m\]\u@\h:\[\033[00m\]\[\033[01;34m\]\w \[\033[00m\] '
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
    eval "`dircolors -b`"
    alias ls="ls --color=auto"
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
