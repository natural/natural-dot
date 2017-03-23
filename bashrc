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
PATH="$PATH:/sbin:/usr/sbin:$HOME/src/natural-bin:$HOME/.local/bin"



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


## other exports
#
# export GREP_OPTIONS="--color=auto --binary-files=without-match --directories=skip"
# export BROWSER=/usr/bin/google-chrome-stable
# export EDITOR=/usr/bin/emacs
# export CHROMIUM_USER_FLAGS="--force-device-scale-factor=0.5"


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
if [ "$TERM" == "xterm-256color" ] || [ "$TERM" == "eterm-color" ]
then
  PS1='\[\033[01;32m\]\u@\h:\[\033[00m\]\[\033[01;34m\]\w \[\033[00m\]'
else
    PS1='\u@\h:\w '
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
source ~/.autoenv/activate.sh

#
#
# keychain ~/.ssh/*dsa


## other exports
#
export BROWSER=/usr/bin/google-chrome-stable
export EDITOR=/usr/bin/emacs



keychain --quick --quiet ~/.ssh/*dsa ~/.ssh/*rsa
source ~/.keychain/`hostname`-sh


# Sensible Bash - An attempt at saner Bash defaults
# Maintainer: mrzool <http://mrzool.cc>
# Version: 0.1

## GENERAL OPTIONS ##

# Prevent file overwrite on stdout redirection
set -o noclobber

# Update window size after every command
shopt -s checkwinsize

# Automatically trim long paths in the prompt (requires Bash 4.x)
PROMPT_DIRTRIM=2

## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

## SANE HISTORY DEFAULTS ##

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
#HISTSIZE=500000
#HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

## BETTER DIRECTORY NAVIGATION ##

# Prepend cd to directory names automatically
shopt -s autocd
# Correct spelling errors during tab-completion
shopt -s dirspell
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell

# This defines where cd looks for targets
# Add the directories you want to have fast access to, separated by colon
# Ex: CDPATH=".:~:~/projects" will look for targets in the current working directory, in home and in the ~/projects folder
# CDPATH="."

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
# shopt -s cdable_vars

# Examples:
# export dotfiles="$HOME/dotfiles"
# export projects="$HOME/projects"
# export documents="$HOME/Documents"
# export dropbox="$HOME/Dropbox"

