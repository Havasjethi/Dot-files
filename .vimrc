set nocompatible

call plug#begin()

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Set color theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Some stuff for path
set path+=**

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
set nohlsearch " Don't highlight search term
set incsearch  " Jumping search

" Always show the status line
set laststatus=2

" TODO :: Add Vim => System write
" Allow copy and paste from system clipboard
set clipboard+=unnamedplus

" Formatting
set nowrap
set tabstop=2 shiftwidth=2 softtabstop=2
set foldlevelstart=2
syntax enable

" set cursorline cursorcolum


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

" noremap <ALT-1> 1gt
" noremap <ALT-2> 2gt
" noremap <ALT-3> 3gt

" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json']


" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Format
" nmap <leader>f   :CocCommand prettier.formatFile<CR>




