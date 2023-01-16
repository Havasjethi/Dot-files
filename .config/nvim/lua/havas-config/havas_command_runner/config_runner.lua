--[[
  Todo ::
  - [X] Lua auto formatting
  - [X] Make command selectable
  - [X] Able to show ?hidden window
  - [X] Return previous & Bind <F5>
  - [ ] Detect project root..
  - [ ] Store commands on separate window
    - [X] Add command
      - [ ] Add Gui
    - [ ] (NOT PRIORITY) Remove command
--]]

local pickers = require'telescope.pickers'
local finders = require'telescope.finders'
local actions = require'telescope.actions'
local action_state = require'telescope.actions.state'
local conf = require('telescope.config').values

local buffer_id = -1
local last_command_index = -1

local function get_command_name(input)
	return 'HavasConfig' .. input
end

local COMMAND_LIST = get_command_name('List')
local COMMAND_SHOW_LAST = get_command_name('Last')
local COMMAND_RERUN_PREVIOUS = get_command_name('Rerun')
local COMMAND_ADD_COMMAND = get_command_name('Add')
local COMMAND_ADD_COMMAND_2 = get_command_name('AddCmd')

local next_id = 1

local available_commands = { {
	'Run main.js ',
	command = { 'node', 'main.js' },
}, {
	'Run main.js with TsNode',
	command = { 'ts-node', 'main.js' },
} }

local function add_command(name, command)
	local x = {
		name,
		id = next_id,
		command = command,
	}
	table.insert(available_commands, x)
	next_id = next_id + 1
end

local function createBufferIfNotExists()
	if not buffer_id or buffer_id < 0 then
		vim.cmd':new +setl\\ buftype=nofile'
		buffer_id = vim.api.nvim_get_current_buf()
	end
end

local function execute_command(command)
	createBufferIfNotExists()
	vim.fn.jobstart(command, {
		stdout_buffered = true,
		on_stdout = function(_, data)
			vim.api.nvim_buf_set_lines(buffer_id, 0, -1, false, data)
		end,
	})
end

local function execute_by_index(index)
	execute_command(available_commands[index].command)
end

local pick_command = function(opts)
	opts = opts or require('telescope.themes').get_dropdown{}
	pickers.new(opts, {
		finder = finders.new_table{
			results = available_commands, -- { { 'red', '#ff0000' }, { 'green', '#00ff00' }, { 'blue', '#0000ff' } },
			entry_maker = function(entry)
				return {
					value = entry,
					display = entry[1], -- To display
					ordinal = entry[1], -- For sorting
				}
			end,
		},
		prompt_title = 'Command Configs',
		sorter = conf.generic_sorter(opts),
		attach_mappings = function(prompt_bufnr, _)
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				local selection = action_state.get_selected_entry()
				execute_command(selection.value.command)
				last_command_index = selection.index
			end)
			return true
		end,
	}):find()
end

vim.api.nvim_create_user_command(
	COMMAND_LIST,
	function(_)
		pick_command()
	end,
	{}
)

vim.api.nvim_create_user_command(
	COMMAND_SHOW_LAST,
	function(_)
		local command_to_run = ':sbuffer ' .. buffer_id
		vim.cmd(command_to_run)
	end,
	{}
)

vim.api.nvim_create_user_command(
	COMMAND_RERUN_PREVIOUS,
	function(_)
		if last_command_index < 0 then
			pick_command()
		else
			execute_by_index(last_command_index)
		end
	end,
	{}
)

vim.api.nvim_create_user_command(
	COMMAND_ADD_COMMAND,
	function(data)
		local name = data.fargs[1]
		table.remove(data.fargs, 1)
		-- data.fargs will be the remaining options
		add_command(name, data.fargs)
	end,
	{ nargs = '*' }
)

vim.api.nvim_create_user_command(
	COMMAND_ADD_COMMAND_2,
	function(_)
		local name = vim.fn.input'Command name: '
		local xname = vim.fn.input'Command script: '
	end,
	{}
)
