vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

-- general keymaps
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', {desc = 'Clear buffer search'})

-- keymaps to exit from neovim
keymap.set('n', '<leader>qq', ':qa<CR>', {desc = 'Quit neovim (close all)'})
keymap.set('n', '<leader>q!', ':qa!<CR>', {desc = 'Quit neovim (close all without save)'})

-- keymaps for file management
keymap.set('n', '<leader>fs', ':w<CR>', {desc = 'Save file'})

-- change window
keymap.set('n', '<leader>wh', '<c-w>h', {desc = 'Move left'})
keymap.set('n', '<leader>wl', '<c-w>l', {desc = 'Move right'})
keymap.set('n', '<leader>wj', '<c-w>j', {desc = 'Move move down'})
keymap.set('n', '<leader>wk', '<c-w>k', {desc = 'Move move up'})

-- move window
keymap.set('n', '<leader>wH', '<c-w>H', {desc = 'Move window to the left'})
keymap.set('n', '<leader>wL', '<c-w>L', {desc = 'Move window to the right'})
keymap.set('n', '<leader>wJ', '<c-w>J', {desc = 'Move window down'})
keymap.set('n', '<leader>wK', '<c-w>K', {desc = 'Move window up'})

-- split window
keymap.set('n', '<leader>wv', '<c-w>v', {desc = 'Vertical split'})
keymap.set('n', '<leader>ws', '<c-w>s', {desc = 'Horizontal split'})

-- close window
keymap.set('n', '<leader>wc', '<c-w>c', {desc = 'Close window'})

-- close other windows
keymap.set('n', '<leader>wo', '<c-w>o', {desc = 'Close all other windows'})

-- open lazy
keymap.set('n', '<leader>ll', '<CMD>Lazy<CR>', {desc = 'Open'})

