# 🛠️ Neovim Config

A modular, minimalist Neovim configuration built with **Lazy.nvim**. Focused on performance, code purity, and on-demand loading.

## 🚀 Quick Start

Ensure you have `git`, `make`, and `ripgrep` installed on your system.

```bash
# 1. Clone the config
git clone https://github.com/changcui/nvim-config ~/.config/nvim

# 2. Headless plugin installation
nvim --headless "+Lazy! sync" +qa

# 3. Launch
nvim

## LSP
# C/C++
sudo apt install clangd

# Python
python3 -m pip install ty
