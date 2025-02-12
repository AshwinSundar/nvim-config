# kickstart-modular.nvim

## Introduction

*This is a fork of [nvim-lua/kickstart.nvim](https://github.com/dam9000/kickstart-modular.nvim). It uses a multi file configuration.*

## Installation

### Install Neovim

- `brew install neovim`

### Copy this repo

- `rm -r ~/.config/nvim && mkdir ~/.config/nvim && cp -r kickstart-modular/ ~/.config/nvim`

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

> **NOTE**
> See [Install Recipes](#Install-Recipes) for additional Windows and Linux specific notes
> and quick install snippets

### Post Installation

- `nvim` - start Neovim. `Lazy` should start installing dependencies; if not, run `:LazyInstall`

