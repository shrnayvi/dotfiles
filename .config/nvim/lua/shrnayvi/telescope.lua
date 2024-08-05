local builtin = require('telescope.builtin')
local set = vim.keymap.set

-- https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure
local actions = require("telescope.actions")

local telescope = require('telescope')

telescope.setup({
  defaults = {
    file_ignore_patterns = {"tests"},
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden", -- add this 
    }
  },
})

telescope.load_extension("live_grep_args")
telescope.load_extension("advanced_git_search")


set('n', '<C-p>', builtin.git_files, {})

set('n', '<C-g>', builtin.find_files, {})
set('n', '<leader>o', builtin.oldfiles, {})

set('n', '<leader>g', ':AdvancedGitSearch<CR>', {})

set("n", '<leader>S', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

set('n', '<leader>s', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

set('n', '<leader>S', function()
  builtin.live_grep({ search = vim.fn.input('Grep > ') });
end)

