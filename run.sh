#!/bin/bash

dotfiles=`ls -A -F |grep -v '/$' |grep '^\..*$'`

for f in ${dotfiles}; do
    ln -s ~/dotfiles/${f} ../
done

echo 'Created symbolic links.'
