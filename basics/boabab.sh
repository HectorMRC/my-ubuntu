#!/bin/bash

if !(baobab --version); then
    echo "Installing Disk Usage Analyzer from apt"
    sudo apt -y install baobab
fi