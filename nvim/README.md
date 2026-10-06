# Neovim Configuration (Lua + lazy.nvim)

## Prerequisites

- **Neovim** >= 0.9.0
- **Git** (for lazy.nvim bootstrap and plugin installs)
- **ripgrep** (`rg`) — used by fzf and Telescope
- **fd** — used by Telescope find_files
- **ctags** (universal-ctags) — used by gutentags

### Install on Ubuntu/Debian

```bash
sudo apt-get update
sudo apt-get install -y neovim git ripgrep fd-find universal-ctags
```

> **Note:** On Ubuntu, `fd` is installed as `fdfind`. Create a symlink:
> ```bash
> sudo ln -s $(which fdfind) /usr/local/bin/fd
> ```

### Install on Fedora/RHEL

```bash
sudo dnf install -y neovim git ripgrep fd-find ctags
```

## Installation

1. Backup your existing config (if any):

   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Copy this folder to `~/.config/nvim/`:

   ```bash
   cp -r . ~/.config/nvim/
   ```

3. Launch Neovim:

   ```bash
   nvim
   ```

   On first launch, **lazy.nvim** will automatically:
   - Clone itself (one-time bootstrap)
   - Install all plugins

4. After plugins are installed, restart Neovim.

## File Structure

```
~/.config/nvim/
├── init.lua                 ← Entry point (bootstraps lazy.nvim)
├── lua/
│   ├── options.lua          ← General settings (vim.opt)
│   ├── keymaps.lua          ← All key mappings
│   └── plugins/
│       ├── cmp.lua          ← Autocompletion (nvim-cmp)
│       ├── editing.lua      ← Comment, trim, ctrlsf, gutentags, etc.
│       ├── gitsigns.lua     ← Git integration
│       ├── telescope.lua    ← Fuzzy finder
│       ├── treesitter.lua   ← Syntax highlighting
│       └── ui.lua           ← NERDTree, floaterm, vista, tokyonight, fzf
└── colors/
    └── jellybeans.vim       ← Custom colorscheme (optional)
```

## Plugin Management

| Command             | Description                     |
|---------------------|---------------------------------|
| `:Lazy`             | Open lazy.nvim dashboard        |
| `:Lazy sync`        | Update all plugins              |
| `:Lazy build <name>`| Rebuild a specific plugin       |
| `:Lazy clean`       | Remove unused plugins           |

## Key Mappings Quick Reference

| Key        | Action                          |
|------------|---------------------------------|
| `ff`       | Find files (fzf)               |
| `fe`       | Live grep (Telescope)          |
| `fs`       | Git status (Telescope)         |
| `S`        | Buffer list (Telescope)        |
| `fw`       | Search word under cursor (CtrlSF) |
| `fl`       | Line comment (visual mode)     |
| `fb`       | Block comment (visual mode)    |
| `[[` / `]]`| Previous / Next git hunk       |
| `]b`       | Git blame line                 |
| `F5` / `F6`| NERDTree open / toggle         |
| `F9`       | Floating terminal              |
| `F11`      | Vista (tag viewer) toggle      |
| `Tab`      | CtrlSF search prompt           |

## Troubleshooting

- **Plugin install fails**: Run `:Lazy sync` again or check internet connection.
- **Missing commands**: Ensure prerequisites (rg, fd, ctags) are installed.
