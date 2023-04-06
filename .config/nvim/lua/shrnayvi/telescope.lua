local builtin = require('telescope.builtin')
local set = vim.keymap.set

-- https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure
local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    }
  },
}

set('n', '<C-p>', builtin.git_files, {})
set('n', '<C-g>', builtin.find_files, {})
set('n', '<leader>s', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

