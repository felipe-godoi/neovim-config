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

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

require("plugins")
require("keymaps")
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
	ensure_installed = { "tsserver", "eslint", "rust_analyzer" },
})
require("formatter-config")
require("rust-tools-config")
require("diagnostics-config")
require("lsp-config")

vim.api.nvim_create_augroup("__formatter__", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	group = "__formatter__",
	command = ":FormatWrite",
})

vim.cmd("colorscheme dracula")
