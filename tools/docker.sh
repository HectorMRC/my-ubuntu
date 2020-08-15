#!/bin/bash

if !(docker --version); then
	echo "Installing Docker from snap"
    sudo apt -y install docker.io
	echo "Adding Docker into sudo group"
    sudo groupadd docker
    sudo gpasswd -a $USER docker
fi

if !(docker-compose --version); then
	echo "Installing Docker Compose from github"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
