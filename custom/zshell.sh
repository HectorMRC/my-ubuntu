#!/bin/bash

if !(zsh --version); then
    sudo apt install zsh
fi

GOT=$(echo $SHELL)
WANT='/usr/bin/zsh'

if [ "$GOT" != "$WANT" ]; then
    chsh -s $(which zsh)
fi