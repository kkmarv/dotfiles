#!/bin/bash

# Bashrc loader block
read -r -d '' LOADER <<"EOF"
# Load my custom config
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
[[ -f "$XDG_CONFIG_HOME/bash/bashrc" ]] && . "$XDG_CONFIG_HOME/bash/bashrc"
EOF

USER_BASHRC="$HOME/.bashrc"

# Check if the loader is already present; if not, append it
if ! grep -Fq 'Load my custom config' "$USER_BASHRC" 2>/dev/null; then
    printf "\n%s\n" "$LOADER" >> "$USER_BASHRC"
fi

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

ln -sf "$CURRENT_DIR/bashrc" "$XDG_CONFIG_HOME/bash/bashrc"
ln -sf "$CURRENT_DIR/bash_aliases" "$XDG_CONFIG_HOME/bash/bash_aliases"
ln -sf "$CURRENT_DIR/bash_completions" "$XDG_CONFIG_HOME/bash/bash_completions"
