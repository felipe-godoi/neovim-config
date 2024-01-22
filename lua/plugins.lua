-- instancia o Packer
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'  -- necessário
  use 'nvim-treesitter/nvim-treesitter' -- syntax highlighting
  use 'neovim/nvim-lspconfig' -- provê configurações padrão de lsp
  use 'hrsh7th/cmp-nvim-lsp' -- auto complete
  use 'hrsh7th/nvim-cmp' -- auto complete
  use 'hrsh7th/cmp-buffer' -- auto complete
  use 'L3MON4D3/LuaSnip' -- provê snippets 
  use 'onsails/lspkind.nvim' -- provê ícones para o lsp
  use 'mfussenegger/nvim-jdtls' -- plugin com todas as features do jdtls
  use 'marko-cerovac/material.nvim' -- material colorscheme
  use { 'ibhagwan/fzf-lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'vim-test/vim-test'
  use {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  }
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'm4xshen/autoclose.nvim'
  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }
  use { 'folke/trouble.nvim', requires = { 'nvim-tree/nvim-web-devicons' } }
end)
