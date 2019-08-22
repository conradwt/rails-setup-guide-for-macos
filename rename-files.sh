#!/bin/bash

FILES="~/.bash_login \
       ~/.bash_profile \
       ~/.bashrc \
       ~/.profile \
       ~/.cshrc \
       ~/.zshrc"

for file in $FILES; do
  if [ -f $file ]; then
    echo "File: $file does exist."
  else
    echo "File: $file does not exist."
  fi
done
