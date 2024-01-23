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
vim.g.material_style = "palenight"

-- set filename on title
vim.opt.title = true

require("plugins")
require("material-config")
require("treesitter-config")
require("fzf-lua-config")
require("git-config")
require("nvim-tree-config")
require("autoclose").setup()
require("typescript-tools-config")
require("coc-config")
require('Comment').setup()
require("lspconfig").angularls.setup({})
require('lualine-config')
require("keymaps")

vim.cmd 'colorscheme material'
