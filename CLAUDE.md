# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

teal.nvim is a Neovim colorscheme plugin providing teal-based dark themes with multiple accent color variations. Written in pure Lua with no build steps or dependencies.

## Architecture

Each colorscheme file in `colors/` follows this structure:

1. **Initialization** - Clears highlights, sets `vim.g.colors_name`, enables termguicolors, sets dark background
2. **Color palette** - Local `c` table with semantic color variables (base, accent, semantic, diff, diagnostic colors)
3. **Helper function** - `hi()` wrapper around `vim.api.nvim_set_hl(0, group, opts)`
4. **Highlight groups** - Editor UI, syntax, diff, diagnostics, LSP, Treesitter, and plugin-specific groups
5. **Terminal colors** - Maps `vim.g.terminal_color_N` (0-15) to palette values

### Accent Variations

All variants share the same dark background (`#18201e`) and structure but use different accent colors:
- `base2tone-field` - Teal/turquoise primary
- `base2tone-field-blue` - Blue primary
- `base2tone-field-gray` - Gray monochromatic
- `base2tone-field-magenta` - Magenta primary
- `base2tone-field-orange` - Orange primary
- `base2tone-field-purple` - Purple primary
- `base2tone-field-yellow` - Yellow primary

### Adding New Accent Variations

Copy an existing colorscheme file, update `vim.g.colors_name`, and modify the color values in the `c` palette table. The highlight group mappings can remain unchanged.

## Plugin Support

The colorschemes include highlight groups for: GitSigns, Telescope, NvimTree, NeoTree, Which-key, Indent-blankline, Noice, Notify, Mini, Cmp, Lazy, Mason, Flash, Dashboard, Snacks, BufferLine.
