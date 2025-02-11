-- instancia o Packer
local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- necessário
	use("nvim-treesitter/nvim-treesitter") -- syntax highlighting
	use("neovim/nvim-lspconfig") -- provê configurações padrão de lsp
	use("hrsh7th/cmp-nvim-lsp") -- auto complete
	use("hrsh7th/nvim-cmp") -- auto complete
	use("hrsh7th/cmp-buffer") -- auto complete
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/vim-vsnip")
	use("L3MON4D3/LuaSnip") -- provê snippets
	use("onsails/lspkind.nvim") -- provê ícones para o lsp
	use("mfussenegger/nvim-jdtls") -- plugin com todas as features do jdtls
	use({ "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } })
	use("vim-test/vim-test")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({ "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } })
	use("m4xshen/autoclose.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("ojroques/nvim-osc52")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	-- use("dracula/vim")
	use({ "catppuccin/nvim", as = "neovim" })	
  use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("simrat39/rust-tools.nvim")
	use("Pocco81/auto-save.nvim")
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use("FelipeSanchezSoberanis/copy-path")
	use("windwp/nvim-ts-autotag")
	use("j-hui/fidget.nvim")
	use("mhartington/formatter.nvim")
	use("lewis6991/gitsigns.nvim")
	use("f-person/git-blame.nvim")
	use("sindrets/diffview.nvim")
end)
