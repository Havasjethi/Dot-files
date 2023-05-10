set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.config/nvim/lua
let &packpath = &runtimepath

source ~/.vimrc
source ~/.config/nvim/key_map.vim

source ~/.config/nvim/plugin.vim

source ~/.config/nvim/coc_mappings.vim

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
augroup END

