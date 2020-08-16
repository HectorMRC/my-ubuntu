#!/bin/bash

ALIAS_PATH=~/.bash_aliases
touch ${ALIAS_PATH}

printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${ALIAS_PATH}
printf "alias docker-clean='docker image rm -f \$(docker image ls | grep none)'\n" $USER >> ${ALIAS_PATH}
printf 'alias free-up="sudo apt autoclean &&
    sudo apt autoremove --purge &&
	sudo apt clean &&
    sudo rm -rf ~/.cache/spotify/Data/* &&
    sudo rm -rf ~/snap/spotify/common/.cache/* &&
	sudo journalctl --vacuum-time=1d && 
	rm -rf ~/.cache/thumbnails/* &&
	sudo ~/snap-autoremove.sh"' $USER >> ${ALIAS_PATH}