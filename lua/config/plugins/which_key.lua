return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = function()
    require("which-key").register({
      ["<leader>f"] = { name = "+File" },
      ["<leader>w"] = { name = "+Window" },
      ["<leader>n"] = { name = "+NvimTree" },
      ["<leader>q"] = { name = "+Quit" },
    })
  end,
}
