# Dotfiles

This repository contains my personal configuration files for various applications. These dotfiles help to set up a consistent environment across different machines, including macOS and various Proxmox servers.

## Scripts

### setup.sh

This script creates symbolic links for configuration files on macOS. It ensures that the necessary directories are created and then links the dotfiles to the appropriate locations.

#### Usage

```bash
./setup.sh
```

### setup2.sh

This script installs `nvim` and `starship`, creates symbolic links for their configuration files on servers, and updates the `.bashrc` file. It ensures that the necessary directories are created and then links the dotfiles to the appropriate locations. Additionally, it sets `TERM` to `xterm-kitty` if Kitty is available, initializes Starship, aliases `vi` and `vim` to `nvim`, installs `packer.nvim` if it is not already installed, and runs `:PackerSync` to install and update plugins.

#### Usage

```bash
./setup2.sh
```

## Configuration Files

The repository contains the following configuration files:

- `nvim/init.lua`: Configuration file for Neovim.
- `kitty/kitty.conf`: Configuration file for Kitty terminal emulator.
- `starship/starship.toml`: Configuration file for Starship prompt.

## Directory Structure

```
dotfiles/
├── nvim/
│   └── init.lua
├── kitty/
│   └── kitty.conf
├── starship/
│   └── starship.toml
├── setup.sh
└── setup2.sh
```

## Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/jackclucas/dotfiles ~/dotfiles
   cd ~/dotfiles
   ```

2. **Run the appropriate setup script:**

   - For macOS:

     ```bash
     ./setup.sh
     ```

   - For Proxmox servers:

     ```bash
     ./setup2.sh
     ```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contributions

Contributions are welcome! Please open an issue or submit a pull request if you have any suggestions or improvements.

## Acknowledgements

Special thanks to the open-source community for providing the tools and inspiration for these configurations.
