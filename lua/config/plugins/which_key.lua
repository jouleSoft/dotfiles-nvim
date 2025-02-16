return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    "echasnovski/mini.icons", --icons
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = function()
    require("which-key").add({
      { "<leader><tab>", group = "Tabs" },
      { "<leader>b",     group = "Buffers" },
      { "<leader>c",     group = "Conform" },
      { "<leader>f",     group = "File" },
      { "<leader>g",     group = "NeoGit" },
      { "<leader>h",     group = "Help" },
      { "<leader>l",     group = "LSP" },
      { "<leader>lf",    group = "Find" },
      { "<leader>n",     group = "NvimTree" },
      { "<leader>o",     group = "Open" },
      { "<leader>s",     group = "Search" },
      { "<leader>q",     group = "Quit" },
      { "<leader>w",     proxy = "<c-w>",   group = "Windows" },
    })
  end,
}
