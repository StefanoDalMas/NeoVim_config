# NeoVim_config

My personal config for NeoVim. The base plugins are provided by [NVChad](https://nvchad.com)

## Prerequisites

- Install NeoVim (`0.9.0` or greater is required)
- A good idea is to `alias vi=nvim` and `alias vim=nvim`to avoid opening the boring one
- Install and setup both a [NerdFont](https://www.nerdfonts.com) such as `JetBrains Mono Font` and a `Symbol Font`
  - When installing it avoid using the one ending with `Mono`, so select for example `JetBrainsMono Nerd Font` and not `JetBrainsMono Nerd Font Mono` to avoid having small icons
- Install Node(I have `20.0.0`)
- Install Git(I have `2.40.0`)
- Have Latex Compiler if you want to use `VimTex`. The compiler needed for the backend is latexmk.
  - If you want to use it you're going to need a PDF Viewer. I'm on MacOS so I use [Skim](https://skim-app.sourceforge.io)

## Addons

Apart from NVChad's base plugins such as Telescope, TreeSitter and so on I've added\

- [copilot.lua](https://github.com/zbirenbaum/copilot.lua) because the official Copilot.nvim is heavier and doesn't work perfectly
- [copilot.cmp](https://github.com/zbirenbaum/copilot-cmp) To make Copilot.lua integrated with nvim-cmp autocompletion
  - When you launch it you have to run the `:Copilot auth` to let copilot do its magic
- [crates.vim](https://github.com/Saecki/crates.nvim) to see latest versions of crates\
  The 2 below are to make LSP rust-analyzer work as I want it to:
- [rust-tools](https://github.com/simrat39/rust-tools.nvim)
- [rust.vim](https://github.com/rust-lang/rust.vim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) + edits in `"lua/custom/init.lua"` to make it LGBTQ+ compliant
- [trouble.nvim](https://github.com/folke/trouble.nvim) with activation on startup and pops up each time the LSP finds an error
- [null.ls](https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main) with a lot of linters and formatters. I've added autoformat on save.- [move.vim](https://github.com/modocache/move.vim) to have move language highlighting without having to add it to TreeSitter
- [peek.nvim](https://github.com/toppair/peek.nvim) to have markdown rendering on browser as you write it
- [leap.nvim](https://github.com/ggandor/leap.nvim) Too useful for cursor movement
- [VimTex](https://github.com/lervag/vimtex) to write LaTex

## Mappings

`<leader>` in this config is the spacebar
I've added a custom mapping for crates.

### Normal Mode

`<leader> rcu` which updates all crates in the file, so if you're in the .toml file you run it to update them all at once
`<leader> tt`to toggle Trouble

- `<leader> op` to Open Peek in your favourite browser

`<leader> s`to change all occurrencies of a word in a file
These one use LSP
_ `<leader> gd` goto definition
_ `<leader> gr` goto references \* `<leader> cf` code format(Have to test it out more)

### Visual Mode

`J` Move line (after cursor) downwards
`K` Move line (after cursor) upwards

## Extras

Modifying the `lua/core/init.lua` to personalize it, such as 4 spaces tab, incremental search and scrolloff of 8 lines\
In order to make `live_grep` work with Telescope (`<leader>fw` as defined in the cheatsheet) you are going to need [ripgrep](https://github.com/BurntSushi/ripgrep)!
I have done some extra modification to the way jump page and search works in order to keep cursor pointing to the selected item always in the middle of the screen.


### TMP
Remember to add { name = "copilot"} to lua/plugins/custom/cmp.lua :)

