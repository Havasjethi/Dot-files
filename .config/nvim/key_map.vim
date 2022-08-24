let mapleader = " "

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Remove annoying
" noremap J <nop>
" noremap K <nop>


" Globlal mode
map <C-@> <nul>

"	Insert mode
imap <C-s> <esc>:wall<enter>a
imap <C-d> <esc>"_yypi
imap <C-d> <esc>"cyy"cpi
imap <ESC>[C <esc>ea
imap <ESC>[D <esc>bi
" <C-o>pa
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

nmap <A-Up> yyp:

" (--Selec--) Copy all
" nmap <C-a> ggVGy<C-O><C-O>

"	Visual
vmap <C-x> "+d
vmap p "_dP
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


nmap gp :tabp<enter>
nmap gn :tabn<enter>

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <F2> <Plug>(coc-rename)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <silent> ga <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ge <Plug>(coc-diagnostic-next)
nmap <silent> gE <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>G <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>aa :call CocAction('runCommand', 'angular.goToComponentWithTemplateFile')<CR>
nmap <silent> <leader>at :call CocAction('runCommand', 'angular.goToTemplateForComponent')<CR>


" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" Format
" nmap <leader>f   :CocCommand prettier.formatFile<CR>

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>e <cmd>lua require('telescope.builtin').git_files()<cr>
noremap <leader>e :Telescope find_files<cr>
nnoremap <leader>fe <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

vmap <leader>cc :<C-U>call NERDComment('x', 'toggle')<CR>
nmap <leader>cc :<C-U>call NERDComment('x', 'toggle')<CR>

