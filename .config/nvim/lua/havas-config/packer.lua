-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'neoclide/coc.nvim',
    branch = 'master',
    run = 'npm install'
  }

  --General
  use 'preservim/nerdtree'
  use 'catppuccin/nvim'
  use 'scrooloose/nerdcommenter'

  use 'mg979/vim-visual-multi'
  -- use 'terryma/vim-multiple-cursors'
  use 'dense-analysis/ale'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use 'mattn/emmet-vim'

  -- Fancy
  use 'vim-airline/vim-airline'
  use 'luochen1990/rainbow'

  -- Them
  use 'ellisonleao/gruvbox.nvim'

  -- Autocompletion
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

--use 'luochen1990/rainbow'
--Plug 'pangloss/vim-javascript'
--Plug 'Xuyuanp/nerdtree-git-plugin'
--Plug 'editorconfig/editorconfig-vim'
--Plug 'leafgarland/typescript-vim'

end)

