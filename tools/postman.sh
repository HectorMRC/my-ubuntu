#!/bin/bash

if !(snap list | grep postman); then
	echo "Installing Postman from snap"
	sudo snap install postman --classic
fi
