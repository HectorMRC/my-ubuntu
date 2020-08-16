#!/bin/bash

BASHRC_PATH=~/.bashrc

printf "\n\n# Updated by a setup script at $(date)\n" $USER >> ${BASHRC_PATH}
printf 'function gitup {
  git add .
  
  if [ -z ${1+x} ]; then
    git commit -m "updates";
  else
    git commit -m "${1}"
  fi

  git push
}\n' $USER >> ${BASHRC_PATH}
