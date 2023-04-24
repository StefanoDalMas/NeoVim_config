# NeoVim_config
My personal config for NeoVim. The base plugins are provided by [NVChad](https://nvchad.com)

## Prerequisites
- Install NeoVim (`0.9.0` or greater is required)
- A good idea is to `alias vi=nvim` and `alias vim=nvim`to avoid opening the boring one
- Install and setup both a [NerdFont](https://www.nerdfonts.com) such as `JetBrains Mono Font` and a `Symbol Font`
  - When installing it avoid using the one ending with `Mono`, so select for example `JetBrainsMono Nerd Font` and not `JetBrainsMono Nerd Font Mono` to avoid having small icons
- Install Node(I have `20.0.0`)
- Install Git(I have `2.40.0`)
## Addons
Apart from NVChad's base plugins such as Telescope, TreeSitter and so on I've added\

* [copilot.lua](https://github.com/zbirenbaum/copilot.lua) because the official Copilot.nvim is heavier and doesn't work perfectly\
* [copilot.cmp](https://github.com/zbirenbaum/copilot-cmp) To make Copilot.lua integrated with nvim-cmp autocompletion\
  * When you launch it you have to run the `:Copilot auth` to let copilot do its magic\
* [crates.vim](https://github.com/Saecki/crates.nvim) to see latest versions of crates\
The 2 below are to make LSP rust-analyzer work as I want it to:
* [rust-tools](https://github.com/simrat39/rust-tools.nvim)
* [rust.vim](https://github.com/rust-lang/rust.vim)


## Mappings
`<leader>` in this config is the  spacebar
I've added a custom mapping for crates.   

`<leader> rcu` which updates all crates in the file, so if you're in the .toml file you run it to update them all at once


## Extras
Modifying the `lua/core/init.lua` to personalize it, such as 4 spaces tab, incremental search and scrolloff of 8 lines
