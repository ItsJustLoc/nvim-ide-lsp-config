Here’s a clean, professional **README.md** you can copy-paste directly into your repo.

---

````markdown
# nvim-ide-config

A personal Neovim configuration set up as a lightweight IDE with LSP, autocompletion, Telescope, and Treesitter.

## Features

- ⚡ Fast startup with **lazy.nvim**
- 🧠 LSP support via **mason** and **nvim-lspconfig**
- ✨ Autocompletion with **nvim-cmp**
- 🌲 Syntax highlighting with **Treesitter**
- 🔍 Fuzzy finding with **Telescope**
- 📁 File explorers: **nvim-tree** and **oil**
- 🎨 Tokyo Night colorscheme
- 🔁 Undo history viewer
- 🐙 Git integration

## Plugins

- lazy.nvim
- mason.nvim
- mason-lspconfig.nvim
- nvim-lspconfig
- nvim-cmp
- cmp-nvim-lsp
- LuaSnip
- friendly-snippets
- nvim-autopairs
- nvim-treesitter
- telescope.nvim
- telescope-fzf-native.nvim
- plenary.nvim
- nvim-tree.lua
- nvim-web-devicons
- oil.nvim
- tokyonight.nvim
- undotree
- vim-fugitive

## Requirements

- Neovim **0.9+**
- Git
- A Nerd Font (for icons)
- `ripgrep` (for Telescope live grep)

## Installation

### 1. Backup your existing config (optional)
```bash
mv ~/.config/nvim ~/.config/nvim.bak
````

### 2. Clone this repo

```bash
git clone https://github.com/YourUsername/nvim-ide-config.git ~/.config/nvim
```

### 3. Start Neovim

```bash
nvim
```

Plugins will install automatically on first launch.

## Key Tools

| Tool       | Purpose             |
| ---------- | ------------------- |
| LSP        | Code intelligence   |
| Telescope  | Fuzzy finding       |
| Treesitter | Syntax highlighting |
| Undotree   | Undo history        |
| Fugitive   | Git integration     |

## Customization

All configuration files are inside:

```
~/.config/nvim/
```

Edit them to suit your workflow.
