local set = vim.keymap.set;

vim.g.mapleader = ' '
vim.g.NERDTreeShowHidden = 1
vim.g.airline_section_c = '%F'
--vim.g.blamer_enabled = 1
--vim.g.NERDTreeWinPos = 'right'

set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
set('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
set('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
set('n', '<leader>l', ':wincmd l<CR>', { noremap = true })
set('n', '<leader>=', ':vertical resize +5<CR>', { noremap = true })
set('n', '<leader>-', ':vertical resize -5<CR>', { noremap = true })
set('n', '<leader>v', ':vsplit<CR><C-w>l', { noremap = true })

set('n', '<leader>u', vim.cmd.UndotreeToggle, { noremap = true })
set('n', '<leader>t', vim.cmd.NERDTreeToggle, { noremap = true })
set('n', '<leader>f', vim.cmd.NERDTreeFind, { noremap = true })
set('n', '<leader>b', vim.cmd.BlamerToggle, { noremap = true })

--Maxmize the split window
set('n', '<C-m>', vim.cmd.MaximizerToggle, { noremap = true })

set('n', '<C-l>', 'gt<CR>', { noremap = true })
set('n', '<C-h>', 'gT<CR>', { noremap = true })
set('n', 'n', 'nzz', { noremap = true })
set('n', 'N', 'Nzz', { noremap = true })
set('n', '<C-d>', '<C-d>zz', { noremap = true })
set('n', '<C-u>', '<C-u>zz', { noremap = true })

--Replace the highlighted/searched word
set('n', '<leader>r', ':%s///g<Left><Left>', { noremap = true })

--Clear search highlights.
set('n', '<leader>c', ':nohlsearch<CR>')

--Toggle ignore case
set('n', '<leader>\\s', ':set ignorecase!<CR>')

--Toggle highlight search
set('n', '<leader>\\h', ':set hlsearch!<CR>')
set('v', '<leader>yy', ':!xclip -f -sel clip<CR>')
--map <leader>pp mz:-lr !xclip -o -set clip<CR>

set('v', '++', '<plug>NERDCommenterToggle')
set('n', '++', '<plug>NERDCommenterToggle')

--Toggle indent line
set('n', '<leader>i', vim.cmd.IndentLinesToggle)
--
--autocmd BufWinEnter * NERDTreeMirror
