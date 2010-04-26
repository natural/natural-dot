#!/bin/bash

## keychain
#
/usr/bin/keychain ~/.ssh/*.dsa
source ~/.keychain/$HOSTNAME-sh


## startup
#
source ~/.bashrc
