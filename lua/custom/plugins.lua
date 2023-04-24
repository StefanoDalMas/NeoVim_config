local plugins ={
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed={
        "rust-analyzer",
      },
    },
  },
  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_,opts)
      require('rust-tools').setup(opts)
    end,
  },
  {
    'saecki/crates.nvim',
    ft={"rust","toml"},
    dependencies = "hrsh7th/nvim-cmp",
    config = function (_,opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources,{name= "crates"})
      return M
    end,
    dependencies = {
      "zbirenbaum/copilot.lua",
      event = "InsertEnter",
      config = function()
        require("copilot").setup {
          suggestion = { enabled = false },
          panel = { enabled = false },
        }
      end,

      dependencies = {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
  },
}
return plugins