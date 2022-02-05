# Undercity

Undercity is a dark theme for Neovim with warm colors and moderately high contrast.

![undercity-screenshot](https://user-images.githubusercontent.com/24204252/152629736-6ba480e2-a2b0-4204-a1d6-92ceaa6d92eb.png)

This project includes themes for [lualine](https://github.com/nvim-lualine/lualine.nvim) and [Kitty](https://sw.kovidgoyal.net/kitty/).

Supported plugins:

-   [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
-   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
-   [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
-   [lualine](https://github.com/nvim-lualine/lualine.nvim)
-   [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)

Disclaimer: Undercity has only been tested with NVIM v0.6.1.

## Installation

```lua
use 'mjlaufer/undercity.nvim'
```

Inside `init.vim`

```vim
set background = dark
colorscheme undercity
```

## Credits

This project began as a fork of [melange](https://github.com/savq/melange).
