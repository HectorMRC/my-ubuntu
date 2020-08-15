#!/bin/bash

if !(curl --version); then
	echo "Installing Curl from apt"
	sudo apt -y install curl
fi