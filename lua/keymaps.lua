vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>t", function() require("trouble").toggle() end)
