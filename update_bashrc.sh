#!/bin/bash

# Define the lines to be added
term_setting='export TERM=xterm-256color'
starship_init='if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi'

# Add the TERM setting to .bashrc if not already present
if ! grep -Fxq "$term_setting" ~/.bashrc; then
    echo "$term_setting" >> ~/.bashrc
    echo "Added TERM setting to .bashrc"
else
    echo "TERM setting already present in .bashrc"
fi

# Add the Starship initialization to .bashrc if not already present
if ! grep -Fxq "$starship_init" ~/.bashrc; then
    echo "$starship_init" >> ~/.bashrc
    echo "Added Starship initialization to .bashrc"
else
    echo "Starship initialization already present in .bashrc"
fi

# Source the updated .bashrc
source ~/.bashrc

echo ".bashrc updated and sourced for kitty and starship!"
