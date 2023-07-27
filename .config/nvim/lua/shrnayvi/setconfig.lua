local opt = vim.opt;

opt.guicursor = ""
opt.tabstop = 2
opt.nu = true
opt.relativenumber = true
opt.softtabstop = 2
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.shiftwidth = 2
opt.backup = false
opt.expandtab = true
opt.ignorecase = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.incsearch = true
opt.hlsearch = false
opt.laststatus = 2
opt.background = 'dark'
opt.colorcolumn = '120'
opt.scrolloff = 10
opt.mouse = ''


require("gruvbox").setup({
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
})
vim.cmd.colorscheme('gruvbox')


