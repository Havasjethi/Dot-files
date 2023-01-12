vim.cmd[[

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
augroup END

]]

vim.cmd[[


autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Some stuff for path
set path+=**

set mouse=nv
" Set cursor stuff:
set number
set relativenumber
set smartindent
set cursorline
set linebreak

" This might be wrong:
set nowrap

filetype on
filetype plugin on
filetype indent on
set smartindent

set hlsearch

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile


set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases

" Always show the status line
set laststatus=2

" TODO :: Add Vim => System write
" Allow copy and paste from system clipboard
set clipboard+=unnamedplus
" Formatting
" set nowrap
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set foldlevelstart=2
syntax enable

" New tabs will be opened right ?to the current
set splitright

" ThePrimeagen
set hidden
set scrolloff=8
set colorcolumn=80

]]

vim.cmd[[
    augroup THE_PRIMEAGEN
    autocmd!
    " autocmd BufWritePre *.lua Neoformat
    autocmd BufWritePre * %s/\s\+$//e
    augroup END

]]

vim.cmd[[
set encoding=utf-8

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
]]
