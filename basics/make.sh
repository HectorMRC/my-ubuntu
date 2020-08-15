#!/bin/bash

if !(make --version); then
    echo "Installing Make from apt"
    sudo apt -y install make
fi
