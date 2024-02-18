return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = function()
    require("which-key").register({
      ["<leader><tab>"] = { name = "+Tabs" },
      ["<leader>b"] = { name = "+Buffers" },
      ["<leader>f"] = { name = "+File" },
      ["<leader>g"] = { name = "+Neogit" },
      ["<leader>h"] = { name = "+Help" },
      ["<leader>l"] = { name = "+LSP" },
      ["<leader>lf"] = { name = "+Find" },
      ["<leader>n"] = { name = "+NvimTree" },
      ["<leader>o"] = { name = "+Open" },
      ["<leader>q"] = { name = "+Quit" },
      ["<leader>s"] = { name = "+Search" },
      ["<leader>w"] = { name = "+Window" },
    })
  end,
}
