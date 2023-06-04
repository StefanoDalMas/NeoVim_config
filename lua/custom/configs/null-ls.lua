local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    formatting.prettier.with{extra_args={ "--tab-width", "4" }},
    formatting.stylua.with { extra_args = { "--config-path", vim.fn.expand "~/.config/nvim/.stylua.toml" } },
    formatting.black,
    formatting.clang_format.with {
        extra_args = {
            "-style={IndentWidth: 4, UseTab: Never, SpacesBeforeTrailingComments : 2}",
            "-assume-filename",
            vim.api.nvim_buf_get_name(0),
        },
    },
    formatting.djlint,
    formatting.beautysh,
    formatting.latexindent,

    lint.shellcheck,
    lint.djlint,
    lint.cpplint,
    lint.pylint.with { extra_args = { "--errors-only" } },
    lint.vale,
    lint.eslint,

    code_actions.proselint,

    diagnostics.proselint,
    diagnostics.write_good,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
