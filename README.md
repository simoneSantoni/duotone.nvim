# teal.nvim

Teal-based dark colorschemes for Neovim with multiple accent color variations. Pure Lua, no dependencies.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yourusername/teal.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("base2tone-field")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yourusername/teal.nvim",
  config = function()
    vim.cmd.colorscheme("base2tone-field")
  end,
}
```

## Colorschemes

All variants share a dark background (`#18201e`) with different accent colors:

| Colorscheme | Primary Accent | Usage |
|-------------|---------------|-------|
| `base2tone-field` | Teal/Turquoise | `:colorscheme base2tone-field` |
| `base2tone-field-blue` | Blue | `:colorscheme base2tone-field-blue` |
| `base2tone-field-gray` | Gray (monochromatic) | `:colorscheme base2tone-field-gray` |
| `base2tone-field-magenta` | Magenta | `:colorscheme base2tone-field-magenta` |
| `base2tone-field-orange` | Orange | `:colorscheme base2tone-field-orange` |
| `base2tone-field-purple` | Purple | `:colorscheme base2tone-field-purple` |
| `base2tone-field-yellow` | Yellow | `:colorscheme base2tone-field-yellow` |

## Features

- Dark background optimized for long coding sessions
- Comprehensive highlight groups for:
  - Editor UI (statusline, tabline, popups, etc.)
  - Syntax highlighting
  - Treesitter
  - LSP diagnostics and references
  - Diff and git
- Plugin support:
  - GitSigns
  - Telescope
  - NvimTree / Neo-tree
  - Which-key
  - Indent-blankline
  - Noice
  - Notify
  - Mini.nvim
  - nvim-cmp
  - Lazy.nvim
  - Mason
  - Flash
  - Dashboard
  - Snacks
  - BufferLine

## Credits

Based on [Base2Tone](https://github.com/atelierbram/Base2Tone-kitty) by Bram de Haan.
