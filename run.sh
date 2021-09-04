#!/bin/bash

dotfiles=`ls -A -F |grep -v '/$' |grep '^\..*$'`

for f in ${dotfiles}; do
    if [ ! -L ~/${f} ]; then
        ln -s ~/dotfiles/${f} ../
    fi
done

echo 'Created symbolic links.'
