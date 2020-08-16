#!/bin/bash

BASHRC_PATH=~/.bashrc

printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${BASHRC_PATH}
printf 'function wind {
  if [ -z ${1+x} ]; then
    xdg-open ${PWD}
  else
    xdg-open ${1}
  fi
}\n' $USER >> ${BASHRC_PATH}