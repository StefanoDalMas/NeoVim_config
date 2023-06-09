local opt = vim.opt
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
    pattern = "*.cpp,*.css,*.go,*.h,*.html,*.js,*.json,*.jsx,*.lua,*.md,*.py,*.ts,*.tsx,*.yaml,*.c,*.dart,*.tex",
})

--get leap running
vim.schedule(function()
    require("leap").add_default_mappings()
end)

--set relative line number
vim.cmd "set rnu"

-- Cooler search
opt.hlsearch = false
opt.incsearch = true

--scrolloff and signcolumn
opt.scrolloff = 6

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-------------------------------------- format on save ------------------------------------------

---VimTex config---

vim.cmd [[
    filetype plugin indent on
    syntax enable
    let g:vimtex_view_method = 'skim'
    let maplocalleader = " "
]]
vim.g.vimtex_syntax_enabled = 0 --idk if needed--
