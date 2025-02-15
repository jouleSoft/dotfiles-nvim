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
    require("which-key").register({
      -- ["<leader><tab>"] = { name = "+Tabs" },
      -- ["<leader>b"] = { name = "+Buffers" },
      -- ["<leader>f"] = { name = "+File" },
      -- ["<leader>g"] = { name = "+Git" },
      -- ["<leader>h"] = { name = "+Help" },
      -- ["<leader>l"] = { name = "+LSP" },
      -- ["<leader>lf"] = { name = "+Find" },
      -- ["<leader>n"] = { name = "+NvimTree" },
      -- ["<leader>o"] = { name = "+Open" },
      -- ["<leader>q"] = { name = "+Quit" },
      -- ["<leader>s"] = { name = "+Search" },
      -- ["<leader>w"] = { name = "+Window" },

      { "<leader><tab>", group = "Tabs",    desc = 'Tabs' },
      { "<leader>b",     group = "Buffers" },
      { "<leader>f",     group = "File" },
      --{ "<leader>g",     group = "Git" },
      { "<leader>h",     group = "Help" },
      { "<leader>l",     group = "LSP" },
      { "<leader>lf",    group = "Find" },
      { "<leader>,",     group = "NvimTree" },
      { "<leader>o",     group = "Open" },
      { "<leader>og",    group = "NeoGit" },
      { "<leader>q",     group = "Quit" },
      { "<leader>s",     group = "Search" },
      { "<leader>w",     group = "Window" },
    })
  end,
}
