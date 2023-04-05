local set = vim.keymap.set;

vim.g.mapleader = " "
set("n", "<leader>h", ':wincmd h<CR>')
set("n", "<leader>j", ':wincmd j<CR>')
set("n", "<leader>k", ':wincmd k<CR>')
set("n", "<leader>l", ':wincmd l<CR>')
set("n", "<leader>t", ':NERDTreeToggle<CR>')
set("n", "<leader>f", ':NERDTreeFind<CR>')
set("n", "<leader>=", ':vertical resize +5<CR>')
set("n", "<leader>-", ':vertical resize -5<CR>')

set("n", "<leader>jd", ':YcmCompleter GoTo<CR>')

--Maxmize the split window
set("n", "<C-m", ':MaximizerToggle<CR> ')
set('n', '<C-l>', 'gt<CR>')
set('n', '<C-h>', 'gT<CR>')
set('n', 'n', 'nzz')
set('n', 'N', 'Nzz')
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')

--Replace the highlighted/searched word
set('n', '<leader>r', ':%s///g<Left><Left>')

--Clear search highlights.
--map <Leader>c :nohlsearch<CR>

--Toggle ignore case
--map <Leader>\s :set ignorecase!<CR>

--Toggle highlight search
set("n", '<leader>\\h', ':set hlsearch!<CR>')
set("v", "<leader>yy", ':!xclip -f -sel clip<CR>')
--map <leader>pp mz:-lr !xclip -o -set clip<CR>

set("v", "++", '<plug>NERDCommenterToggle')
set("n", "++", '<plug>NERDCommenterToggle')
--
--"let g:NERDTreeWinPos = "right"
--autocmd BufWinEnter * NERDTreeMirror
--"let g:blamer_enabled=1
--"let g:blamer_delay = 500
--
--"Show full git file path in status bar
--let g:lightline = {
--      \ 'component_function': {
--      \   'filename': 'LightlineFilename',
--      \ }
--      \ }
--
--function! LightlineFilename()
--  let root = fnamemodify(get(b:, 'git_dir'), ':h')
--  let path = expand('%:p')
--  if path[:len(root)-1] ==# root
--    return path[len(root)+1:]
--  endif
--  return expand('%')
--endfunction
--
--"Toggle indent line
--nmap <leader>i :IndentLinesToggle<CR>
--let g:indentLine_char_list = ['┆']  "¦, ┆, │, ⎸, ▏
--
--"JSON file 
--autocmd Filetype json
--  \ let g:indentLine_setConceal = 0 |
--  \ let g:vim_json_syntax_conceal = 0





