#!/bin/bash

if !(snap list | grep spotify); then
	echo "Installing Spotify from snap"
	sudo snap install spotify --classic
fi
