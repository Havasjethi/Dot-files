set nocompatible

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdcommenter'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Useless Fancy
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" This Web & Vue
Plug 'mattn/emmet-vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

" Ale
Plug 'dense-analysis/ale'

" Some syntax support
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'}

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

let mapleader = " "

" set cursorline cursorcolum
"
" --------------------- "
"     Key gs
" --------------------- "

" <ESC>[D  === Ctrl + Left
" <ESC>[C  === Ctrl + Right


"nmap <ESC>[D <C-Left>
"nmap <ESC>[C <C-Right>

" Globlal mode
map <C-@> <nul>

"	Insert mode
imap <C-s> <esc>:w<enter>a
imap <C-d> <esc>yypi
imap <ESC>[C <esc>ea
imap <ESC>[D <esc>bi
imap <C-v> <esc>pa
imap <C-x> <esc>"+ddi
" imap <C-Enter> <esc>oi
"	Normal
" r00000000000
nmap <C-s> :w<enter>
nmap <C-x> "+dd
nmap <C-c> "+yy
"nmap <C-d> yyp
nmap <ESC>[D b
nmap <ESC>[C e

nmap <A-Up> yyp:

"	Visual
vmap <C-x> "+d


" Easier movement between split windows CTRL + {h, j, k, l}
  nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" noremap <ALT-1> 1glet g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']t
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt

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


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> <leader>G <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>g <Plug>(coc-diagnostic-next)
" CoC extensions

" Add CoC Prettier if prettier is installed
"if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"  let g:coc_global_extensions += ['coc-prettier']
"endif

" Add CoC ESLint if ESLint is installed

command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" TODO :: Use some Unified Language Server (LSP)
" Goal: Work on differet languages
nmap <F2> <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> ga <Plug>(coc-codeaction)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nmap gp :tabp<enter>
nmap gn :tabn<enter>

" nmap <up> <Nop>
" nmap <down> <Nop>
" nmap <left> <Nop>
" nmap <right> <Nop>

" Format
" nmap <leader>f   :CocCommand prettier.formatFile<CR>

" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>e <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fe <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Remove annoying
noremap J <nop>
" noremap K <nop>

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
let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript', 'typescript', ],
      \   'style': ['css', 'scss', 'sass', 'less', ],
      \   'i18n': ['json'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}

