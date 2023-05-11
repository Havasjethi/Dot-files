call plug#begin()
" Themes
Plug 'morhetz/gruvbox'
Plug 'rebelot/kanagawa.nvim'
Plug 'joshdick/onedark.vim'
Plug 'amadeus/vim-evokai'
Plug 'dracula/vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'EdenEast/nightfox.nvim'

" General
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'nvim-telescope/telescope.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dispatch'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

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

"
Plug 'dag/vim-fish'

" Some syntax support
" Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'}

" Surrounding content with '"([{}])"' && Replace <html_tags></html_tags>
" Untested
" Plug 'liuchengxu/vim-which-key' " Documentation not created by automatically
" Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:coc_global_extensions = ['coc-pairs', 'coc-prettier',  'coc-tsserver', 'coc-json']

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif



let g:user_emmet_mode='n'
let g:vim_vue_plugin_load_full_syntax = 1
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key = ','

autocmd FileType html,css,vue EmmetInstall


let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#enabled = 1

let g:rainbow_active = 1

" let g:ale_linters = ['cspell', 'eslint', 'standard', 'tslint', 'tsserver', 'typecheck', 'xo']
let g:ale_linters_ignore = ['deno']
" let g:ale_linters ( )
