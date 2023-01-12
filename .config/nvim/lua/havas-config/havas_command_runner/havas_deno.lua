local pickers = require'telescope.pickers'
local finders = require'telescope.finders'
local actions = require'telescope.actions'
local action_state = require'telescope.actions.state'
local conf = require('telescope.config').values

local COMMAND_LIST = 'HavasConfigListLua'

HAVAS_BUFFER_ID = -1
-- AVAILABLE_COMMANDS = {}

local pick_command = function(opts)
	opts = opts or require('telescope.themes').get_dropdown{}
	pickers.new(opts, {
		finder = finders.new_table{
			results = AVAILABLE_COMMANDS, -- { { 'red', '#ff0000' }, { 'green', '#00ff00' }, { 'blue', '#0000ff' } },
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
				vim.cmd(':HavasProjectExecuteCommand ' .. selection.value.id)
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
