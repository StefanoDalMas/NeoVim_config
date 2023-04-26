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
        ["<leader>tc"] = {
            function()
                require("trouble").close()
            end,
            "Trouble Close"
        },
        ["<leader>to"] = {
            function ()
                require("trouble").open()
            end,
            "Trouble Open"
        },
    }
}
return M
