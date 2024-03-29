return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- empty setup using defaults
    nvimtree.setup({
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>,", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })
    keymap.set("n", "<leader>nc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse" })
    keymap.set("n", "<leader>nf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Find file" })
    keymap.set("n", "<leader>np", "<cmd>NvimTreeClipboard<CR>", { desc = "Clipboard" })
    keymap.set("n", "<leader>nr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh" })
    keymap.set("n", "<leader>nw", "<cmd>cd ~/workspace<cr><cmd>NvimTreeToggle<cr>", { desc = "Toggle in ~/workspace" })
  end,
}
