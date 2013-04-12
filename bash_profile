#!/bin/bash

## keychain
#
keychain ~/.ssh/*dsa ~/.ssh/*rsa
source ~/.keychain/$HOSTNAME-sh


## startup
#
source ~/.bashrc
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


source ~/.git-completion.sh

alias g1-start="VBoxManage startvm ngsdev-vii-g1 --type headless"
alias g1-suspend="VBoxManage controlvm ngsdev-vii-g1 savestate"
alias g1-halt="VBoxManage controlvm ngsdev-vii-g1 poweroff"


alias g2-start="VBoxManage startvm ngsdev-wpf-g2 --type headless"
alias g2-suspend="VBoxManage controlvm ngsdev-wpf-g2 savestate"
alias g2-halt="VBoxManage controlvm ngsdev-wpf-g2 poweroff"

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
alias lunchbox-dev="cd && cd src/lunchbox/ && source bin/activate && cd src/hostedbento/hostedbento"
alias ngc-dev="cd && cd src/vii/ && source bin/activate && cd src/ngc"
alias ys-dev='export DJANGO_SETTINGS_MODULE=yourshot.settings.dev && cd && cd src/yourshot/ && source bin/activate && cd src/yourshot && PS1="(yourshot-dev:\$(parse_git_branch)) \[\033[01;30m\]\[\033[00m\]\[\033[00;31m\]\W $ \[\033[00m\]" '
alias geodata-dev='cd && cd src/geodata/ && source bin/activate && cd src/geodata'
alias gs-dev='cd && cd src/geosearch-env/ && source bin/activate && cd src/geosearch'
alias notify-dev='export DJANGO_SETTINGS_MODULE=notifications.settings.dev && cd && cd src/project-notifications-env/ && source bin/activate && export PS1="(notify-dev:\$(parse_git_branch)) \[\033[01;30m\]\[\033[00m\]\[\033[00;31m\]\W $ \[\033[00m\]" && cd src/project-notifications'
