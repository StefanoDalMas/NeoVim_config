local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

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
  lint.vale,
  lint.pylint.with { extra_args = { "--errors-only" } },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
