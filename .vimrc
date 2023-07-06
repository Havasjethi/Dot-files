" https://github.com/itchyny/lightline.vim
set nocompatible
"
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/target/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set background=dark

" Some stuff for deep path search
set path+=**

set mouse=nv
"
" Set cursor stuff:
set number
set relativenumber
set smartindent
set cursorline
set linebreak

" This might be wrong, but wrapping is anoying
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

" Allow copy and paste from system clipboard
set clipboard+=unnamedplus

" Formatting
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2 foldlevelstart=2
" set tabstop=4 shiftwidth=4 softtabstop=4 foldlevelstart=4
syntax enable

" New windows will be opened right to the current
set splitright

" ThePrimeagen
set hidden
set scrolloff=8
set colorcolumn=80

" nmap <leader>cc V<leader>cc
" vnoremap <leader>cc :<C-U>call NERDComment('x', 'toggle')<cr>

set encoding=utf-8

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c

" This greps is evil
augroup THE_PRIMEAGEN
    autocmd!
    " autocmd BufWritePre *.lua Neoformat
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" nmap <leader><leader>r :source~/.vimrc<cr>

" nmap <leader>rr :source ~/.vimrc<cr>
"

nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

let NERDTreeQuitOnOpen=1
