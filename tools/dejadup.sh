#!/bin/bash

if !(snap list | grep deja-dup); then
	echo "Installing Déjà Dup from snap"
	sudo snap install deja-dup --classic
fi
