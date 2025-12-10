#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -sf "$CURRENT_DIR/.gitconfig" "$HOME/.gitconfig"
