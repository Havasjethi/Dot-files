let mapleader = " "

" noremap J <nop>
" noremap K <nop>

" Global mode
map <C-@> <nul>

"	Insert mode
" imap <C-s> <esc>:wall<enter>a
imap <C-s> <esc>:wall<enter>

" Duplicate
imap <C-d> <esc>"yyy"yp

imap <ESC>[C <esc>ea
imap <ESC>[C <esc>ea
imap <ESC>[D <esc>bi

imap <C-v> <esc>pa
" imap <C-x> <esc>"+ddi
" imap <C-Enter> <esc>oi

"	Normal
" r00000000000
nmap <silent> <C-s> :wall<enter>
" nmap <C-x> "+dd
nmap <C-c> "+yy
"nmap <C-d> yyp
nmap <ESC>[D b
nmap <ESC>[C e

nmap <A-Up> yyp
" nmap <A-k> yyp

"	Visual
vmap <C-x> "+d
vnoremap p "_dP
vmap $ g_


" Easier movement between split windows CTRL + {h, j, k, l}
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

noremap <leader>0 :tablast<cr>
nnoremap <leader>x :tabclose<Cr>

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" Format
" nmap <leader>f   :CocCommand prettier.formatFile<CR>

" 'NERDCommentEmptyLines'

vmap <leader>cc :<C-U>call NERDComment('x', 'toggle')<CR>
nmap <leader>cc V<leader>cc

nmap í z

nmap <leader>sa ggVG

nmap <A-s> <C-s>
nmap <A-w> <A-w>

vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>

tnoremap <Esc> <C-\><C-n>
nmap <A-h> :tabp<cr>
nmap <A-l> :tabn<cr>

vmap " S"
vmap ' S'
vmap ` S`
vmap ( S(
vmap [ S[
vmap { S{

" Ctrl+h to stop searching
" nnoremap <C-h> :nohlsearch<cr>

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Very magic by default
" nnoremap ? ?\v
" nnoremap / /\v
" cnoremap %s/ %sm/

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

nmap Ú :G blame<CR>

nmap <leader>sa ggVG
nmap << <<V
nmap >> >>V
vmap < <gv
vmap > >gv
noremap fap zfap
noremap fip zfip
noremap <A-é> :set nohlsearch<cr>

