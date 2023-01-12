-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd[[packadd packer.nvim]]

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)

--General

-- use 'mg979/vim-visual-multi'
-- use 'terryma/vim-multiple-cursors'

-- Fancy

-- Them

-- Autocompletion -- Collection of configurations for built-in LSP client -- Autocompletion plugin -- LSP source for nvim-cmp -- Snippets source for nvim-cmp -- Snippets plugin

-- Todo :: Add this: airblade/vim-gitgutter
--use 'luochen1990/rainbow'
--Plug 'pangloss/vim-javascript'
--Plug 'Xuyuanp/nerdtree-git-plugin'
--Plug 'editorconfig/editorconfig-vim'
--Plug 'leafgarland/typescript-vim'
	use'wbthomason/packer.nvim'
	use'vim-denops/denops.vim'
	use'vim-denops/denops-helloworld.vim'
	use'EdenEast/nightfox.nvim'

	use{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } },
	}

	use{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

	use{
		'neoclide/coc.nvim',
		branch = 'master',
		run = 'npm install',
	}

	use'preservim/nerdtree'
	use'catppuccin/nvim'
	use'scrooloose/nerdcommenter'

	use'dense-analysis/ale'

	use'tpope/vim-fugitive'
	use'tpope/vim-surround'

	use'mattn/emmet-vim'

	use'vim-airline/vim-airline'
	use'luochen1990/rainbow'

	use'ellisonleao/gruvbox.nvim'

	use'neovim/nvim-lspconfig'
	use'hrsh7th/nvim-cmp'
	use'hrsh7th/cmp-nvim-lsp'
	use'saadparwaiz1/cmp_luasnip'
	use'L3MON4D3/LuaSnip'
end)
