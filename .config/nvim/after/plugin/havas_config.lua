local function get_command_name(input)
	return 'HavasConfig' .. input
end

local COMMAND_LIST = get_command_name('List')
local COMMAND_SHOW_LAST = get_command_name('Last')
local COMMAND_RERUN_PREVIOUS = get_command_name('Rerun')
local COMMAND_ADD_COMMAND = get_command_name('Add')
local COMMAND_ADD_COMMAND_2 = get_command_name('AddCmd')

vim.cmd('noremap ú :' .. COMMAND_LIST .. '<cr>')
vim.cmd('noremap <leader>p :' .. COMMAND_SHOW_LAST .. '<cr>')
vim.cmd('noremap <F5> :' .. COMMAND_RERUN_PREVIOUS .. '<cr>')
vim.cmd('noremap <F3> :' .. COMMAND_ADD_COMMAND .. ' ShowDate date -u <cr>')
vim.cmd('noremap <F4> :' .. COMMAND_ADD_COMMAND_2 .. '<cr>')

-- Find root
vim.cmd':HavasProjectAddRootPattern .git'
