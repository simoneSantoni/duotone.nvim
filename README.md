# duotone.nvim

Duotone dark colorschemes for Neovim with multiple accent color variations. Pure Lua, no dependencies.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yourusername/duotone.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("duotone")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yourusername/duotone.nvim",
  config = function()
    vim.cmd.colorscheme("duotone")
  end,
}
```

## Colorschemes

All variants share a dark background (`#18201e`) with different accent colors:

| Colorscheme | Primary Accent | Usage |
|-------------|---------------|-------|
| `duotone` | Teal/Turquoise | `:colorscheme duotone` |
| `duotone-blue` | Blue | `:colorscheme duotone-blue` |
| `duotone-gray` | Gray (monochromatic) | `:colorscheme duotone-gray` |
| `duotone-magenta` | Magenta | `:colorscheme duotone-magenta` |
| `duotone-orange` | Orange | `:colorscheme duotone-orange` |
| `duotone-purple` | Purple | `:colorscheme duotone-purple` |
| `duotone-yellow` | Yellow | `:colorscheme duotone-yellow` |

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
