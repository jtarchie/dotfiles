#!/bin/bash

set -eux

dotfiles="$PWD"
# setup git to be ergonomic
if grep "$dotfiles/.gitconfig" -q -f "$HOME/.gitconfig" ; then
    cat "$dotfiles/.gitconfig" >> "$HOME/.gitconfig"
fi

sudo apt-get install -y ripgrep