return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>og.', '<cmd>Neogit<cr>', { desc = 'Open Neogit' })
    require("neogit").setup({
      kind = "tab",
    })
  end,
}
