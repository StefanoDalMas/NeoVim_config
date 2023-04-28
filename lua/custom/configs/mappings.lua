local M ={}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}
M.trouble = {
    n = {
        ["<leader>tt"] = {
            function()
                require("trouble").toggle()
            end,
            "Trouble Toggle"
        },
   }
}
M.general = {
    n = {
        ["<leader>s"] = {":%s/\\<<C-r><C-w>\\>/","Change all occurrencies of a word"},
        --all of these use LSP
        ["gd"] = {function() vim.lsp.buf.definition() end,"Go to definition LSP"},
        ["gr"] = {function() vim.lsp.buf.references() end, "Go to references LSP"},
        ["cf"] = {function() vim.lsp.buf.format() end, "Code Format LSP"},
        ["J"] = {"mzJ`z","Remap of moving line below to anchor to the cursor"},
        ["<C-d>"] = {"<C-d>zz", "Remap to keep cursor in the middle for half page jumps"},
        ["<C-u>"] = {"<C-u>zz", "Remap to keep cursor in the middle for half page jumps"},
        ["n"] = {"nzzzv","Remap to keep cursor in middle during search"},
        ["N"] = {"Nzzzv", "Remap to keep cursor in the middle during search"},

    },
    v = {
        ["J"] = {":m '>+1<CR>gv=gv", "Move line down"},
        ["K"] = {":m '<-2<CR>gv=gv", "Move line up"},
    },
}
return M
