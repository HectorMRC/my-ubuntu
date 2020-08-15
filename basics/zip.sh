#!/bin/bash

if !(unzip --version); then
    echo "Installing Unzip from apt"
    sudo apt -y install unzip
fi

if !(zip --version); then
    echo "Installing Zip from apt"
    sudo apt -y install zip
fi