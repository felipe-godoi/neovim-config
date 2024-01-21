require("nvim-tree").setup()

vim.keymap.set('n', 'T', "<cmd>:NvimTreeToggle<CR>", { silent = true })
