#!/bin/bash

if !(snap list | grep vlc); then
	echo "Installing VLC from snap"
	sudo snap install vlc --classic
fi
