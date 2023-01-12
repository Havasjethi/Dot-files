local root_patterns = {}

local function add_root(name)
	for _, value in ipairs(name) do
		table.insert(root_patterns, value)
	end
end

vim.api.nvim_create_user_command(
	'HavasProjectAddRootPattern',
	function(data)
		add_root(data.fargs)
	end,
	{ nargs = '*' }
)

vim.api.nvim_create_user_command(
	'HavasProjectFindRoot',
	function(data)
		return 'zz'
	end,
	{}
)

vim.cmd':HavasProjectAddRootPattern .git'
