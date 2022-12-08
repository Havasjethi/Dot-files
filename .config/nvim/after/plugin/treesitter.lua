

require'nvim-treesitter.configs'.setup {
  ensure_installed ={"help", "lua", "rust", "javascript","typescript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}

print("Me called")
