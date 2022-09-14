set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.config/nvim/lua
let &packpath = &runtimepath

source ~/.vimrc
:lua require('tree_sitter')

source ~/.config/nvim/key_map.vim
