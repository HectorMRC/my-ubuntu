#!/bin/bash

if !([ "$DISPLAY" ] || [ "$WAYLAND_DISPLAY" ] || [ "$MIR_SOCKET" ]); then
    echo "This Ubuntu has no graphic session"
    exit
fi

if !(apt list | grep gnome-tweak-tool); then
	echo "Installing Gnome Tweak Tool from apt"
    sudo apt install gnome-tweak-tool
fi

if !(apt list | grep chrome-gnome-shell); then
	echo "Installing Gnome Shell from apt"
    sudo apt install chrome-gnome-shell
fi

mkdir -p ~/.icons
cp -r ${PWD}/styles/icons/McMojave/McMojave-circle-dark ~/.icons/
cp -r ${PWD}/styles/icons/McMojave/McMojave-circle ~/.icons/

mkdir -p ~/.themes
cp -r ${PWD}/styles/themes/McMojave-dark ~/.themes/

echo "Setting up look & feel"
dconf write org/gnome/desktop/interface/gtk-theme 'McMojave-dark'
dconf write org/gnome/desktop/interface/icon-theme 'McMojave-circle-dark'
dconf write org.gnome/desktop.wm/preferences/button-layout 'close,minimize,maximize:'

# Browser extenion:
# https://extensions.gnome.org/extension/19/user-themes/
#
# Install
# https://extensions.gnome.org/extension/307/dash-to-dock/

dconf write org/gnome/shell/enabled-extensions ['dash-to-dock@micxgx.gmail.com', 'blyr@yozoon.dev.gmail.com']
dconf write org/gnome/shell/extensions/dash-to-dock/dock-position 'BOTTOM'
dconf write org/gnome/shell/extensions/dash-to-dock/scroll-action 'switch-workspace'
dconf write org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink true
dconf write org/gnome/shell/extensions/user-theme/name 'McMojave-dark'