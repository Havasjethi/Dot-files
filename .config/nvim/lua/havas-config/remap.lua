vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>p', vim.cmd.Ex)

vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '$', 'g_')

vim.keymap.set('n', 'Q', '<nop>')

-- Old shit
vim.cmd'source ~/.config/nvim/key_map.vim'

vim.cmd[[
  let NERDTreeShowLineNumbers=1
  let g:NERDTreeWinSize=51
  autocmd FileType nerdtree setlocal relativenumber
  let g:NERDTreeWinPos = "right"
]]

vim.cmd[[
  nmap <leader><leader>r :source~/.vimrc<cr>
  nmap <leader>sa ggVG
  nmap <silent> ő :so<cr>
]]
