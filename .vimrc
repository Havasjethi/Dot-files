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
" Themes
Plug 'morhetz/gruvbox'
Plug 'rebelot/kanagawa.nvim'
Plug 'joshdick/onedark.vim'
Plug 'amadeus/vim-evokai'
Plug 'dracula/vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

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
Plug 'nvim-lua/plenary.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Language
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" Useless Fancy
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" This Web
Plug 'mattn/emmet-vim'

" Ale
Plug 'dense-analysis/ale'

" Some syntax support
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'}

" Surrounding content with '"([{}])"' && Replace <html_tags></html_tags>
" Untested
" Plug 'liuchengxu/vim-which-key' " Documentation not created by automatically
" Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

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
set nowrap

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

" New tabs will be opened right ?to the current
set splitright

" ThePrimeagen
set hidden
set scrolloff=8
set colorcolumn=80

" nmap <leader>cc V<leader>cc
" vnoremap <leader>cc :<C-U>call NERDComment('x', 'toggle')<cr>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:coc_global_extensions = ['coc-pairs', 'coc-prettier',  'coc-tsserver', 'coc-json']

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

let g:NERDCreateDefaultMappings = 0
let g:NERDCommentEmptyLines = 1

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

let g:NERDCustomDelimiters = { 'unix': { 'left': '#' } }
nmap <leader><leader>r :source~/.vimrc<cr>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


nmap <leader>sa ggVG
" nmap <leader>rr :source ~/.vimrc<cr>

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#enabled = 1

let g:rainbow_active = 1

