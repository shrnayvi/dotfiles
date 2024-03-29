syntax on

set noerrorbells
set tabstop=2 
set softtabstop=2
set smartindent
set shiftwidth=2
set expandtab
set nowrap
set noswapfile
set relativenumber
set ignorecase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set laststatus=2
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'BurntSushi/ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-solarized8'
Plug 'APZelos/blamer.nvim'
Plug 'Mizux/vim-colorschemes'
Plug 'nikvdp/ejs-syntax'
Plug 'tomasiser/vim-code-dark' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'ianks/vim-tsx'
Plug 'Yggdroot/indentLine'
Plug 'jparise/vim-graphql'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'szw/vim-maximizer'
Plug 'peitalin/vim-jsx-typescript'


call plug#end()

colorscheme gruvbox

if executable('rg') 
    let g:rg_derive_root='true'
endif

let mapleader = " "
let NERDTreeShowHidden=1


"let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"Maxmize the split window
nnoremap <C-m> :MaximizerToggle<CR> 
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <C-l> gt<CR>
nnoremap <C-h> gT<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-d> <C-d>zz 
nnoremap <C-u> <C-u>zz 

nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :Files<CR>

"Replace the highlighted/searched word
nnoremap <leader>r :%s///g<Left><Left>

"Clear search highlights.
map <Leader>c :nohlsearch<CR>

"Toggle ignore case
map <Leader>\s :set ignorecase!<CR>

"Toggle highlight search
nnoremap <leader>\h :set hlsearch!<CR>

vmap <leader>yy :!xclip -f -sel clip<CR>    
map <leader>pp mz:-lr !xclip -o -set clip<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"let g:NERDTreeWinPos = "right"
autocmd BufWinEnter * NERDTreeMirror
"let g:blamer_enabled=1
"let g:blamer_delay = 500

"Show full git file path in status bar
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

"Toggle indent line
nmap <leader>i :IndentLinesToggle<CR>
let g:indentLine_char_list = ['┆']  "¦, ┆, │, ⎸, ▏

"JSON file 
autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0

