#!/bin/bash

# Define dotfiles directory and backup directory
DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of dotfiles to symlink
FILES=("nvim/init.lua" "kitty/kitty.conf" "starship/starship.toml")

# Loop through each file and create symlinks
for FILE in "${FILES[@]}"; do
    SRC="$DOTFILES_DIR/$FILE"
    DEST="$HOME/.config/$FILE"
    
    # Backup existing file if it exists
    if [ -e "$DEST" ]; then
        mv "$DEST" "$BACKUP_DIR"
    fi
    
    # Create parent directories if they don't exist
    mkdir -p "$(dirname "$DEST")"
    
    # Create symlink
    ln -s "$SRC" "$DEST"
done

echo "Dotfiles setup complete!"
