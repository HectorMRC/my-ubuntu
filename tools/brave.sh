#!/bin/bash

if !(brave-browser --version); then
	echo "Installing Brave browser from https://brave.com"
    sudo apt -y install apt-transport-https curl
    
    curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    sudo apt -y update
    sudo apt -y install brave-browser
fi