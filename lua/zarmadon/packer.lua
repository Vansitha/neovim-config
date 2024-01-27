-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use 'mfussenegger/nvim-lint'

  use "mhartington/formatter.nvim"

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update
      ts_update({ with_sync = true })
    end,
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use {
    "williamboman/mason.nvim"
  }

  use { 'AlexvZyl/nordic.nvim' }

  use "rebelot/kanagawa.nvim"

end)
