#!/bin/sh
#delete packages in given folders
#author: eltsai

if [ -z "$1" ]; then
    if [ -d $HOME/Downloads ]; then
        echo ">>> Deleting packages from the Download folder."
        find $HOME/Downloads -name '*.deb' -delete
        find $HOME/Downloads -name '*.tar.xz' -delete
    else
        echo ">>> Default Download folder not found."
    fi
else
    if [ -d $1 ]; then
        echo echo ">>> Deleting packages from the $1 folder."
        find $1 -name '*.deb' -delete
        find $1 -name '*.tar.xz' -delete
    else
        echo ">>> Folder '$1' not found."
    fi
fi


