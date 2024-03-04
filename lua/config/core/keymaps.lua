vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

-- quit
keymap.set('n', '<leader>qq', ':q<CR>', { desc = 'Quit current buffer (neovim if only one buffer)' })
keymap.set('n', '<leader>qQ', ':qa<CR>', { desc = 'Quit neovim (close all)' })
keymap.set('n', '<leader>q!', ':qa!<CR>', { desc = 'Quit neovim (close all without save)' })

-- buffers
keymap.set('n', '<leader>bf', '<CMD>Telescope buffers<CR>', { desc = 'Find buffer (Telescope)' })
keymap.set('n', '<leader>bb', '<CMD>e #<CR>', { desc = 'Change buffer' })
keymap.set('n', '<leader>bh', '<CMD>bprevious<CR>', { desc = 'Change previous buffer' })
keymap.set('n', '<leader>bl', '<CMD>bnext<CR>', { desc = 'Change next buffer' })

-- file
keymap.set('n', '<leader>fs', '<CMD>w<CR>', { desc = 'Save file' })

-- help
keymap.set('n', '<leader>hl', '<CMD>h Lazy<CR>', { desc = 'Get help from Lazy' })
vim.keymap.set('n', '<leader>hh', ':nohlsearch<CR>', { desc = 'Clear buffer search' })

-- open
keymap.set('n', '<leader>ol', '<CMD>Lazy<CR>', { desc = 'Open Lazy' })

-- open
keymap.set('n', '<leader><tab>l', '<CMD>tabNext<CR>', { desc = 'Next tab' })
keymap.set('n', '<leader><tab>h', '<CMD>tabprevious<CR>', { desc = 'Previous tab' })

-- windows
keymap.set('n', '<leader>wh', '<c-w>h', { desc = 'Move left' })
keymap.set('n', '<leader>wl', '<c-w>l', { desc = 'Move right' })
keymap.set('n', '<leader>wj', '<c-w>j', { desc = 'Move move down' })
keymap.set('n', '<leader>wk', '<c-w>k', { desc = 'Move move up' })
keymap.set('n', '<leader>wH', '<c-w>H', { desc = 'Move window to the left' })
keymap.set('n', '<leader>wL', '<c-w>L', { desc = 'Move window to the right' })
keymap.set('n', '<leader>wJ', '<c-w>J', { desc = 'Move window down' })
keymap.set('n', '<leader>wK', '<c-w>K', { desc = 'Move window up' })
keymap.set('n', '<leader>wv', '<c-w>v', { desc = 'Vertical split' })
keymap.set('n', '<leader>ws', '<c-w>s', { desc = 'Horizontal split' })
keymap.set('n', '<leader>wc', '<c-w>c', { desc = 'Close window' })
keymap.set('n', '<leader>wo', '<c-w>o', { desc = 'Close all other windows' })

-- navigation
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- tagbar
keymap.set('n', '<leader>ot', '<cmd>TagbarToggle<cr>', { desc = 'Open Tagbar' })
