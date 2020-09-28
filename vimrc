syntax on

set noerrorbells
set noswapfile
set tabstop=4 
set softtabstop=4
set shiftwidth=4 
set smartindent
set expandtab
set nowrap
set number
set relativenumber
set ignorecase
set nobackup
set undodir=~/.vim/undo
set undofile
set incsearch
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'BurntSushi/ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
"Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg') 
    let g:rg_derive_root='true'
endif

let mapleader = " "

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :Files<CR>

set laststatus=2

vmap <leader>yy :!xclip -f -sel clip<CR>    
map <leader>pp mz:-lr !xclip -o -set clip<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
