#!/bin/bash

set -eux

dotfiles="$PWD"
# setup git to be ergonomic
if grep "$dotfiles/.gitconfig" -q -f "$HOME/.gitconfig" ; then
    cat "$dotfiles/.gitconfig" >> "$HOME/.gitconfig"
fi

# sudo add-apt-repository -y ppa:longsleep/golang-backports
# sudo apt update -y
# sudo apt install -y golang-go
sudo apt-get install -y ripgrep

# go get -u github.com/boyter/scc/
# export PATH=$PATH:$HOME/go/src/
