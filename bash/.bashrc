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
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init bash)"
fi

# Load direnv
if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi

# Load nvm
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
