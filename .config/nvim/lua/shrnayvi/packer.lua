-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "ellisonleao/gruvbox.nvim" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'tpope/vim-fugitive'

  use 'scrooloose/nerdtree'

  use 'preservim/nerdcommenter'

  use 'APZelos/blamer.nvim'

  use 'Xuyuanp/nerdtree-git-plugin'

  use 'mbbill/undotree'

  use 'szw/vim-maximizer'

  use 'airblade/vim-gitgutter'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use 'jparise/vim-graphql'

use 'jiangmiao/auto-pairs'

use 'nikvdp/ejs-syntax'

use 'itchyny/lightline.vim'

use 'peitalin/vim-jsx-typescript'

use 'terryma/vim-multiple-cursors'

end)
