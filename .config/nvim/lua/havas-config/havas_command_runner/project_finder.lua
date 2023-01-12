-- [[
-- TODO ::
--      - [ ]
-- ]]

local root_patterns = { '.git', 'init.lua' }

HAVAS_PROJECT_ROOT = nil

local function count_pattern(str, pattern)
	local count = 0
	for x in string.gmatch(str, pattern) do
		count = count + 1
	end
	return count
end

local function parent_dir(dir_name)
	return dir_name
end

local function find_root()
	local max_depth = -1
	local max_depth_index = -1
	local path = -1

	for index, value in ipairs(root_patterns) do
		local dir_name = vim.fn.finddir(root_patterns[index], ';')
		local dir_depth = count_pattern(dir_name, '/')

		if dir_depth > max_depth then
			max_depth = dir_depth
			max_depth_index = index
			path = parent_dir(dir_name)
		end

		print(dir_name)
	end

	print(path)
	-- print(vim.inspect(vim.fn.finddir('a', ';')))
end

function HAVAS_GET_ROOT()
	if HAVAS_PROJECT_ROOT == nil then
		HAVAS_PROJECT_ROOT = find_root()
	end
	return HAVAS_PROJECT_ROOT
end

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
		HAVAS_GET_ROOT()
	end,
	{}
)

find_root()

-- print(vim.inspect(count_pattern('/vala/mi.csoda/', '/')))
-- local x = vim.cmd'HavasProjectFindRoot'
-- print('This: ' .. x)
