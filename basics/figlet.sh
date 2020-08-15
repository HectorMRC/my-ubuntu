#!/bin/bash

if !(figlet -v); then
    echo "Installing Figlet from apt"
    sudo apt -y install figlet
fi