return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = function()
    require("which-key").register({
      ["<leader>b"] = { name = "+Buffers" },
      ["<leader>f"] = { name = "+File" },
      ["<leader>g"] = { name = "+Neogit" },
      ["<leader>l"] = { name = "+Lazy" },
      ["<leader>n"] = { name = "+NvimTree" },
      ["<leader>q"] = { name = "+Quit" },
      ["<leader>w"] = { name = "+Window" },
    })
  end,
}
