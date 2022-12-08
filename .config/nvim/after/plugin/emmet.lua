
vim.cmd [[
  let g:user_emmet_mode='n'
  let g:vim_vue_plugin_load_full_syntax = 1
  let g:user_emmet_install_global = 1
  let g:user_emmet_leader_key = ','

  autocmd FileType html,css,vue EmmetInstall
]]
