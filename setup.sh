#!/bin/bash

LOGS_PATH=${PWD}/logs.out
BASICS_PATH=${PWD}/basics
TOOLS_PATH=${PWD}/tools
LANGS_PATH=${PWD}/langs
CUSTOM_PATH=${PWD}/custom

execute_all_from() {
	for file in ${1}/*.sh
	do
		echo "Executing script from ${1}: $file"
  		source $file # >> ${LOGS_PATH}
	done
}

sudo apt -y update
execute_all_from ${BASICS_PATH}
execute_all_from ${TOOLS_PATH}
execute_all_from ${LANGS_PATH}
execute_all_from ${CUSTOM_PATH}

sudo apt -y update
sudo apt -y upgrade

echo "Done."