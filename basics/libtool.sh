#!/bin/bash

if !(libtool --version); then
    echo "Installing Libtool from apt"
    sudo apt -y install libtool
fi