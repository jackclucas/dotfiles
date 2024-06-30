# ~/dotfiles/setup.sh
#!/bin/bash

# Create necessary directories
mkdir -p ~/.config/nvim
mkdir -p ~/.config/kitty
mkdir -p ~/.config

# Create symbolic links
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "Configuration files have been linked."

