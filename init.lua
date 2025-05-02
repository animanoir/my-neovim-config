vim.cmd [[call plug#begin('~/.config/nvim/plugged')]]
vim.cmd [[Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}]]
vim.cmd [[call plug#end()]]

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "go", "javascript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
