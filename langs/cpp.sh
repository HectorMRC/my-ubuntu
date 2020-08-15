#!/bin/bash

if !(g++ --version); then
    echo "Installing C++ from apt"
    sudo apt -y install g++
fi