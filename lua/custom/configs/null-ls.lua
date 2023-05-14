local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.black,
  formatting.clang_format.with {
    extra_args = {
      "-style={IndentWidth: 4, UseTab: Never}",
      "-assume-filename",
      vim.api.nvim_buf_get_name(0),
    },
  },
  formatting.djlint,
  formatting.beautysh,

  lint.shellcheck,
  lint.djlint,
  lint.cpplint,
  lint.pylint.with { extra_args = { "--errors-only" } },
  lint.vale,

  code_actions.proselint,

  diagnostics.proselint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
