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
    }
}
return M
