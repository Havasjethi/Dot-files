local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>e', builtin.find_files)
vim.keymap.set('n', '<A-e>', builtin.find_files)
