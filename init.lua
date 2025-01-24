-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- set filename on title
vim.opt.title = true

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option("updatetime", 300)

vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("TS_OrganizeImports", { clear = true }),
	desc = "TS_OrganizeImports",
	pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
	command = "TSToolsOrganizeImports sync",
})

require("plugins")
require("keymaps")
require("auto-save-config")
require("nvim-tree-config")
require("nvim-cmp-config")
require("treesitter-config")
require("fzf-lua-config")
require("git-config")
require("nvim-tree-config")
require("autoclose").setup()
require("Comment").setup({ ignore = "^$" })
require("lualine-config")
require("mason-config")
require("mason-lspconfig").setup({
	ensure_installed = { "rust_analyzer", "html" },
})
require("rust-tools-config")
require("diagnostics-config")
require("nvim-ts-autotag").setup()
require("fidget").setup()
require("lsp-config")
require("nvim-ufo-config")
require("formatter-config")
require("typescript-tools").setup({})

vim.cmd("colorscheme dracula")
