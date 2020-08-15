#!/bin/bash

if !([ "$DISPLAY" ] || [ "$WAYLAND_DISPLAY" ] || [ "$MIR_SOCKET" ]); then
    echo "This Ubuntu has no graphic session"
    exit
fi

if !(apt list | grep gnome-tweak-tool); then
	echo "Installing Gnome Tweak Tool from apt"
    sudo apt install gnome-tweak-tool

    echo "Setting up look & feel"
    gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
fi

if !(apt list | grep chrome-gnome-shell); then
	echo "Installing Gnome Shell from apt"
    sudo apt install chrome-gnome-shell
fi