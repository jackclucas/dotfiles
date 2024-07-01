#!/bin/bash

# Install Neovim
if ! command -v nvim &> /dev/null
then
    echo "Neovim not found. Installing..."
    # For Debian/Ubuntu
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y neovim
    # For CentOS/RHEL
    elif command -v yum &> /dev/null; then
        sudo yum install -y epel-release
        sudo yum install -y neovim
    # For Fedora
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y neovim
    else
        echo "Package manager not found. Please install Neovim manually."
        exit 1
    fi
fi

# Install Starship
if ! command -v starship &> /dev/null
then
    echo "Starship not found. Installing..."
    curl -sS https://starship.rs/install.sh | sh
fi

# Create necessary directories
mkdir -p ~/.config/nvim
mkdir -p ~/.config

# Create symbolic links
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# Update .bashrc to use kitty, initialize starship prompt, and add aliases for vi and vim
{
    echo ''
    echo '# Use kitty terminal if available'
    echo 'if command -v kitty &> /dev/null; then'
    echo '    export TERM="xterm-kitty"'
    echo 'fi'
    echo ''
    echo '# Initialize starship prompt'
    echo 'if command -v starship &> /dev/null; then'
    echo '    eval "$(starship init bash)"'
    echo 'fi'
    echo ''
    echo '# Alias vi and vim to nvim'
    echo 'alias vi="nvim"'
    echo 'alias vim="nvim"'
} >> ~/.bashrc

echo "Configuration files have been linked and .bashrc updated. Please restart your terminal or run 'source ~/.bashrc' to apply changes."

