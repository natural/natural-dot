#!/bin/bash

## keychain
#
keychain ~/.ssh/*.dsa
source ~/.keychain/$HOSTNAME-sh


## startup
#
source ~/.bashrc
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


source ~/.git-completion.sh

alias g1-start="VBoxManage startvm ngsdev-vii-g1 --type headless"
alias g1-suspend="VBoxManage controlvm ngsdev-vii-g1 savestate"
alias g1-halt="VBoxManage controlvm ngsdev-vii-g1 poweroff"


alias g2-start="VBoxManage startvm ngsdev-wpf-g2 --type headless"
alias g2-suspend="VBoxManage controlvm ngsdev-wpf-g2 savestate"
alias g2-halt="VBoxManage controlvm ngsdev-wpf-g2 poweroff"
