-- Carga packer.nvim
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer se puede actualizar a sí mismo
  use 'wbthomason/packer.nvim'

  -- nvim-treesitter con post-install/update hook para TSUpdate
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Aquí puedes agregar más plugins
end)

-- Configuración de nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "go", "javascript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
