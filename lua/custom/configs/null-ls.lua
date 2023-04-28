local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.black,
  formatting.clang_format,
  formatting.djlint,

  lint.shellcheck,
  lint.djlint,
  lint.cpplint,
  --lint.vale,
  lint.pylint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
