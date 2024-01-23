-- remap leader binding
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- toggle trouble window 
vim.keymap.set("n", "<leader>td", "<cmd>FzfLua lsp_document_diagnostics<CR>", { silent = true, remap = false })
vim.keymap.set("n", "<leader>tw", "<cmd>FzfLua lsp_workspace_diagnostics<CR>", { silent = true, remap = false })

-- fzf-lua bindings
vim.api.nvim_set_keymap("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep_glob()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})

-- toggle NvimTreeTroggle
vim.keymap.set('n', 'T', "<cmd>:NvimTreeToggle<CR>", { silent = true })

-- nvim-osc52 clipboard mappings
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)

-- resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- bing code actions
vim.keymap.set("n", "<leader>ca", "<cmd>FzfLua lsp_code_actions<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>cr", "<cmd>FzfLua lsp_references<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ct", "<cmd>FzfLua lsp_typedefs<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>cd", "<cmd>FzfLua lsp_definitions<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ch", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-f>", "<cmd>FzfLua lgrep_curbuf<CR>", { silent = true, noremap = true })
