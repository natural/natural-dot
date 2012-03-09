#!/bin/bash


for FILE in `ls`
do
    if [ "$FILE" != "install.sh" ] && [ "$FILE" != "README.md" ]
    then
        ln -s `perl -e 'use Cwd "abs_path";print abs_path(shift)' $FILE` $HOME/.$FILE
    fi
done


git submodule sync
git submodule update --init --recursive
