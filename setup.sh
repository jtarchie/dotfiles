#!/bin/bash

set -eux

dotfiles="$PWD"
# setup git to be ergonomic
ln -sf "$dotfiles/.git-authors" "$HOME/.git-authors"
if grep "$dotfiles/.git-config" -q -f "$HOME/.gitconfig" ; then
    cat "$dotfiles/.git-config" >> "$HOME/.gitconfig"
fi

sudo apt-get install -y ripgrep