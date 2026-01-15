#!/bin/bash

# This script symlinks ~/.config/nvim to this directory

# Ask for confirmation
read -p "This will overwrite your existing Neovim configuration. Are you sure you want to continue? (y/n) " -n 1 -r
echo    # move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborting."
    exit 1
fi

CONFIG_DIR="$HOME/.config"
NVIM_DIR="$CONFIG_DIR/nvim"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create the config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"
echo "Ensured $CONFIG_DIR exists."

# Remove existing nvim config if it exists
rm -rf "$NVIM_DIR"
echo "Removed existing $NVIM_DIR."

# Remove existing .local/share/nvim if it exists
rm -rf "$HOME/.local/share/nvim"
echo "Removed existing $HOME/.local/share/nvim."

# Remove existing .local/state/nvim if it exists
rm -rf "$HOME/.local/state/nvim"
echo "Removed existing $HOME/.local/state/nvim."

# Create the symlink
ln -s "$SCRIPT_DIR" "$NVIM_DIR"
echo "Created symlink from $NVIM_DIR to $SCRIPT_DIR."
