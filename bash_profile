#!/bin/bash


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}


keychain ~/.ssh/*dsa


source ~/.keychain/$HOSTNAME-sh
source ~/.bashrc
source ~/.git-completion.sh
