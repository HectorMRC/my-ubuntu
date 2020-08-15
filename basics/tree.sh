#!/bin/bash

if !(tree --version); then
    echo "Installing Tree from apt"
    sudo apt -y install tree
fi