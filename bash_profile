#!/bin/bash


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}


keychain ~/.ssh/*dsa ~/.ssh/*rsa


source ~/.keychain/$HOSTNAME-sh
source ~/.bashrc
source ~/.git-completion.sh


alias ys-dev='export DJANGO_SETTINGS_MODULE=yourshot.settings && cd && cd src/yourshot/ && source bin/activate && cd src/yourshot && PS1="(yourshot-dev:\$(parse_git_branch)) \[\033[01;30m\]\[\033[00m\]\[\033[00;31m\]\W $ \[\033[00m\]" '
alias ns-dev='export DJANGO_SETTINGS_MODULE=notifications.settings.dev && cd && cd src/project-notifications-env/ && source bin/activate && export PS1="(notify-dev:\$(parse_git_branch)) \[\033[01;30m\]\[\033[00m\]\[\033[00;31m\]\W $ \[\033[00m\]" && cd src/project-notifications'
alias mmdb-dev='export DJANGO_SETTINGS_MODULE=mmdb.settings && cd && cd src/mmdb/ && source bin/activate && export PS1="(mmdb-dev:\$(parse_git_branch)) \[\033[01;30m\]\[\033[00m\]\[\033[00;31m\]\W $ \[\033[00m\]" && cd src/mmdb'
source /usr/local/Cellar/autoenv/0.1.0/activate.sh
