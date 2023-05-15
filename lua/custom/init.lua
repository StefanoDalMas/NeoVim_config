-- whacky way to initialize trouble.nvim so that it's active on startup
vim.schedule(function()
  require("trouble").open()
end)
vim.schedule(function()
  require("trouble").close()
end)

--indent-blankline.nvim custom colors

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#61AFFF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#56D7D8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#98D379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#E5C054 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#E06C75 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

-------------------------------------- format on save ------------------------------------------

vim.api.nvim_create_autocmd("BufWritePre", {
  command = "lua vim.lsp.buf.format()",
  pattern = "*.cpp,*.css,*.go,*.h,*.html,*.js,*.json,*.jsx,*.lua,*.md,*.py,*.ts,*.tsx,*.yaml,*.c,*.dart",
})

--get leap running
vim.schedule(function()
  require("leap").add_default_mappings()
end)

--set relative line number
vim.cmd "set rnu"

--neovide stuff like command c v

if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
