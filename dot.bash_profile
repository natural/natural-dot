#!/bin/bash

## keychain
#
/usr/bin/keychain -q  ~/.ssh/*.dsa
source ~/.keychain/$HOSTNAME-sh


## startup
#
source ~/.bashrc
