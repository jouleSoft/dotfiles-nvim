return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', {desc = 'Open Neogit'})
    require("neogit").setup()
  end,
}