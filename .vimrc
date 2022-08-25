set nocompatible
"
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin()
" Theme
Plug 'morhetz/gruvbox'
Plug 'rebelot/kanagawa.nvim'
Plug 'joshdick/onedark.vim'
Plug 'amadeus/vim-evokai'
Plug 'dracula/vim'

" General
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'nvim-telescope/telescope.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

" General
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Language
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'nvim-lua/plenary.nvim'

" Useless Fancy
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" This Web
Plug 'mattn/emmet-vim'

" SPA stuff
Plug 'leafOfTree/vim-vue-plugin' " Vue
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

" Ale
Plug 'dense-analysis/ale'

" Some syntax support
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'}

" Surrounding content with '"([{}])"' && Replace <html_tags></html_tags>
" Untested
Plug 'liuchengxu/vim-which-key'
" Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
" Plug 'preservim/nerdcommenter'

call plug#end()

" Set color theme
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
set wrap

" WIM
" set autoread


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

" ThePrimeagen
set hidden
set scrolloff=8
set colorcolumn=80

" nmap <leader>cc V<leader>cc
" vnoremap <leader>cc :<C-U>call NERDComment('x', 'toggle')<cr>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:coc_global_extensions = ['coc-pairs', 'coc-prettier',  'coc-tsserver', 'coc-angular',  'coc-json']

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
set encoding=utf-8

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c


" Use <c-space> to trigger completion.

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

command! -nargs=0 Prettier :CocCommand prettier.formatFile
" This greps
augroup THE_PRIMEAGEN
    autocmd!
    " autocmd BufWritePre *.lua Neoformat
    autocmd BufWritePre * %s/\s\+$//e
augroup END

let g:user_emmet_mode='n'
let g:vim_vue_plugin_load_full_syntax = 1
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key = ','

autocmd FileType html,css,vue EmmetInstall
let g:NERDSpaceDelims = 2

let NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=51
autocmd FileType nerdtree setlocal relativenumber
let g:NERDTreeWinPos = "right"

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'
