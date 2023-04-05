local builtin = require('telescope.builtin')
local set = vim.keymap.set

set('n', '<C-p>', builtin.git_files, {})
set('n', '<C-g>', builtin.find_files, {})
set('n', '<leader>s', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

