
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>e <cmd>lua require('telescope.builtin').git_files()<cr>
noremap <leader>e :Telescope find_files<cr>
noremap <A-e> :Telescope find_files<cr>
nnoremap <leader>fe <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope live_grep<cr>
nnoremap <leader>fi <cmd>Telescope live_grep -uu<cr>

nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

