local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local util = require "lspconfig/util"

local servers = { "clangd", "pyright", "texlab", "move_analyzer", "bashls" ,"marksman","tsserver","lemminx"}

-- for servers both in Mason and LSPConfig
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
