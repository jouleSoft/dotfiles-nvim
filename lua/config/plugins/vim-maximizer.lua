return {
  "szw/vim-maximizer",
  -- load plugin at startup
  lazy = false,
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>wm', '<cmd>MaximizerToggle<CR>', {desc = 'Maximize window'})
  end,
}
