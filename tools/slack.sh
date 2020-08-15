#!/bin/bash

if !(snap list | grep slack); then
	echo "Installing Slack from snap"
	sudo snap install slack --classic
fi
