#!/bin/bash

if !(protoc --version); then
    echo "Installing protobuf compiler from apt"
    sudo apt -y install protobuf-compiler
fi