#!/bin/bash

if !(git --version); then
	echo "Installing Git from apt"
	sudo apt -y install git
fi
