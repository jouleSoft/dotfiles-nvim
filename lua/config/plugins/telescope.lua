return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    --{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release -DCMAKE_POLICY_VERSION_MINIMUM=3.5 && cmake --build build --config Release' },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous, -- move to prev result
            ['<C-j>'] = actions.move_selection_next,     -- move to next result
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        }
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
        },
        live_grep = {
          theme = "dropdown",
        },
        grep_string = {
          theme = "ivy",
        },
        oldfiles = {
          theme = "dropdown",
          previewer = false,
        },
        buffers = {
          theme = "ivy",
          previewer = false,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        }
      }
    })

    telescope.load_extension("fzf");

    -- SET KEYMAPS --
    local keymap = vim.keymap

    -- files
    keymap.set('n', '<leader>ff', '<cmd>Telescope find_files previewer=true<cr>', { desc = 'Fuzzy find files in cwd' })
    keymap.set('n', '<leader>.', '<cmd>Telescope find_files theme=ivy<cr>', { desc = 'Fuzzy find files in cwd' })
    keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files' })
    keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd' })
    keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd' })
    keymap.set('n', '<leader>fw', '<cmd>Telescope find_files cwd=~/workspace theme=ivy previewer=true<cr>',
      { desc = 'Fuzzy find files in ~/workspace' })

    -- help
    keymap.set('n', '<leader>ht', '<cmd>h Telescope<cr>', { desc = 'Get help from Telescope' })
    keymap.set('n', '<leader>hk', '<cmd>Telescope keymaps<cr>', { desc = 'Telescope show keymaps' })

    -- git
    keymap.set('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = 'Show git branches' })
    keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = 'Show git commit' })
    keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>', { desc = 'Show git status' })
  end,
}
