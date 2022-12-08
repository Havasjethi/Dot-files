vim.keymap.set('n', '<leader>nf', ':NERDTreeFind<CR>')
vim.keymap.set('n', '<leader>nn', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')

vim.cmd [[
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
]]
