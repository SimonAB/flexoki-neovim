# flexoki-neovim
Neovim adaptation of [Flexoki](https://stephango.com/flexoki) by Steph Ango.

This repository is a fork of [`kepano/flexoki-neovim`](https://github.com/kepano/flexoki-neovim).

## What this fork adds

This fork keeps the upstream theme intact, but adds a few practical options that
are useful in real-world, transparent-terminal setups:

- **Transparency controls**: `transparent = { editor, floats, float_border, ui, menus }`
  to make common UI surfaces inherit your terminal backdrop.
- **Light palette accessibility tweak**: `light_variant = "light_high_contrast"`
  which darkens the most subtle text (`tx-3`) to improve readability in light mode.
- **Variant-aware `flexoki-light`**: `:colorscheme flexoki-light` respects your configured
  `light_variant`, so you can use `light_high_contrast` without switching scheme names.

Currently still **work in progress** and missing support for even the most
common plugins. This will be fixed shortly. If you are using a plugin that
isn't supported please create an issue, or upvote an existing one, we will use
this to prioritize them.

> These aren't currently up to date

![Flexoki Dark for Neovim](screenshots/flexoki-neovim-dark.png)

![Flexoki Light for Neovim](screenshots/flexoki-neovim-light.png)


## Installation
To install simply add via your plugin manager and call the theme

**[lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
require("lazy").setup({
  { 'SimonAB/flexoki-neovim', name = 'flexoki' }
})
```

**[packer.nvim](https://github.com/wbthomason/packer.nvim)**

```lua
require('packer').startup(function(use)
  use({ 'SimonAB/flexoki-neovim', as = 'flexoki' })
end)
```

**[Paq](https://github.com/savq/paq-nvim)**

```lua
require('paq')({
  { 'SimonAB/flexoki-neovim', as = 'flexoki' }
})
```

## Usage

### Setup options

```lua
require("flexoki").setup({
  -- Light variant to use when `variant = "auto"` and `background=light`
  light_variant = "light_high_contrast",

  -- Transparent UI surfaces (useful with a transparent terminal backdrop)
  transparent = {
    editor = true,       -- Normal/editor background
    floats = true,       -- NormalFloat/FloatTitle
    float_border = true, -- FloatBorder
    ui = true,           -- MsgArea/ModeMsg/MsgSeparator
    menus = true,        -- Pmenu
  },
})
```

* Dark

```lua
-- Set colorscheme after options
vim.cmd('colorscheme flexoki-dark')
```

* Light

```lua
-- Set colorscheme after options
vim.cmd('colorscheme flexoki-light')
```
