#!/bin/bash

if !(autoconf --version); then
	echo "Installing Autoconf from apt"
    sudo apt -y install autoconf
fi

if !(automake --version); then
	echo "Installing Automake from apt"
    sudo apt -y install automake
fi
