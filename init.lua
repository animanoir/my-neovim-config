-- Loads packer.nvim
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can update itself 
  use 'wbthomason/packer.nvim'

  -- nvim-treesitter with post-install/update hook for TSUpdate
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Here I can add more plugins... 
end)

-- nvim-treesitter config:
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "go", "javascript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
