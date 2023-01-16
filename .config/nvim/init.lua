vim.cmd[[
  let g:NERDCreateDefaultMappings = 0
]]

require('havas-config.remap')
require('havas-config.packer')
require('havas-config.settings')

require('havas-config.havas_command_runner.project_finder')
require('havas-config.havas_command_runner.config_runner')
require('havas-config.havas_command_runner.havas_deno')

vim.cmd'set runtimepath^=~/.config/nvim/deno-plugin'
-- vim.cmd'let g:denops#debug = 1'
vim.cmd"nmap ö :call denops#plugin#reload('havas_denops')<cr>"

-- vim.cmd':ALEDisable'
