local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer",
            },
        },
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "neovim/nvim-lspconfig",
        opts = function()
            return require "custom.configs.rust-tools"
        end,
        config = function(_, opts)
            require("rust-tools").setup(opts)
        end,
    },
    {
        "saecki/crates.nvim",
        ft = { "rust", "toml" },
        dependencies = "hrsh7th/nvim-cmp",
        config = function(_, opts)
            local crates = require "crates"
            crates.setup(opts)
            crates.show()
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            local M = require "plugins.configs.cmp"
            table.insert(M.sources, { name = "crates" })
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
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        config = function()
            require("trouble").setup {
                --FUCK COMNETSEMU
                --               auto_open = true,
                --                auto_close = true,
            }
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        opts = {
            ensure_installed = {
                "vim",
                "c",
                "bash",
                "lua",
                "typescript",
                "tsx",
                "html",
                "css",
                "toml",
            },
            autotag = {
                enable = true,
            },
        },
    },
    --fix so it has underline under functions, see plugins/others!
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context_start = true,
                char_highlight_list = {
                    "IndentBlanklineIndent1",
                    "IndentBlanklineIndent2",
                    "IndentBlanklineIndent3",
                    "IndentBlanklineIndent4",
                    "IndentBlanklineIndent5",
                    "IndentBlanklineIndent6",
                },
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.configs.null-ls"
            end,
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "rvmelkonian/move.vim",
        lazy = false,
    },
    {
        "toppair/peek.nvim",
        lazy = false,
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup {
                app = "browser",
            }
        end,
    },
    {
        "ggandor/leap.nvim",
    },
    {
        "ThePrimeagen/vim-be-good",
        lazy = false,
    },
    {
        "lervag/vimtex",
        lazy = false,
    },
}
return plugins
