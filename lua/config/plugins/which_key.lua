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

      --{ "<leader>w",     group = "Window" },

      b = {
        name = 'Buffers',
      },

      f = {
        name = 'File',
      },

      h = {
        name = 'Help',
      },

      l = {
        name = 'LSP',
        f = { name = 'Find' }
      },

      o = {
        name = 'Open',
        g = { name = 'NeoGit' }
      },

      s = {
        name = 'Search',
      },

      q = {
        name = 'Quit',
      },

    }, { prefix = "<leader>" })

    require("which-key").add({
      { "<leader>,",     group = "NvimTree" },
      { "<leader><tab>", group = "Tabs" },
      { "<leader>w",     proxy = "<c-w>",   group = "Windows" },
    })
  end,
}
