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
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "tsserver", "eslint" },
})
require("formatter-config")
require("lsp-config")

vim.api.nvim_create_augroup("__formatter__", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	group = "__formatter__",
	command = ":FormatWrite",
})

vim.cmd("colorscheme dracula")
