#!/bin/bash

if !(nodejs --version); then
    echo "Installing Node.js from apt"
    sudo apt -y install nodejs
    sudo apt -y install npm
fi