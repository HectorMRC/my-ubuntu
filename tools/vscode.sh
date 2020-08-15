#!/bin/bash

if !(snap list | grep code); then
	echo "Installing VSCode from snap"
	sudo snap install code --classic
fi
