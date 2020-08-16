#!/bin/bash

ALIAS_PATH=~/.bash_aliases
touch ${ALIAS_PATH}

printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${ALIAS_PATH}
printf "alias myip='curl ifconfig.co'\n" $USER >> ${ALIAS_PATH}
printf "alias wifi='sudo nmcli networking off && sudo service network-manager restart && sudo nmcli networking on'\n" $USER >> ${ALIAS_PATH}
