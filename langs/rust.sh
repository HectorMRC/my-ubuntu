#!/bin/bash

RUST_SOURCE=https://sh.rustup.rs
BASHRC_PATH=~/.bashrc

if !(rustc --version); then
    echo "Installing Rustlang from ${RUST_SOURCE}"
    curl --proto '=https' --tlsv1.2 -sSf ${RUST_SOURCE} | sh
    
    printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${BASHRC_PATH}
    printf "export PATH=\$PATH:\$HOME/.cargo/bin\n" $USER >> ${BASHRC_PATH}

    echo "Installing Cargo's bindgen module"
    cargo install bindgen

    echo "Installing Cargo's protobuf module"
    cargo install --version 1.5.1 protobuf
fi
