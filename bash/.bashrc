#!/bin/bash

[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"

# Load all files from .bashrc.d/ directory
if [ -d "$HOME"/.bashrc.d ]; then
  for file in "$HOME"/.bashrc.d/*.bash; do
    source "$file"
  done
fi

# Load starship
eval "$(starship init bash)"

# Load direnv
eval "$(direnv hook bash)"
