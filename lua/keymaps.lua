-- map W to save file
vim.cmd([[
    cnoreabbrev W w
    cnoreabbrev Wq wq
    cnoreabbrev WQ wq
    cnoreabbrev Q q
]])

-- map Ctrl + S to save file
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", { silent = true })

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
vim.api.nvim_set_keymap(
	"n",
	"<leader><C-p>",
	[[<Cmd>lua require('fzf-lua').files({ cwd = vim.fn.expand('%:p:h') })<CR>]],
	{}
)
vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep_glob()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})

-- toggle NvimTreeTroggle
vim.keymap.set("n", "T", "<cmd>:NvimTreeToggle<CR>", { silent = true })

-- nvim-osc52 clipboard mappings
vim.keymap.set("n", "<leader>c", require("osc52").copy_operator, { expr = true })
vim.keymap.set("n", "<leader>cc", "<leader>c_", { remap = true })
vim.keymap.set("v", "<leader>y", require("osc52").copy_visual)
vim.keymap.set("v", "<leader>y", require("osc52").copy_visual)
vim.keymap.set("v", "<leader>y", '"+y', { silent = true, remap = false })

-- resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- bind code actions
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>FzfLua lsp_code_actions<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>cr", "<cmd>FzfLua lsp_references<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ct", "<cmd>FzfLua lsp_typedefs<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>cd", "<cmd>FzfLua lsp_definitions<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ci", "<cmd>FzfLua lsp_implementations<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "H", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-f>", "<cmd>FzfLua lgrep_curbuf<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader><C-f>", "<cmd>FzfLua grep_cword<CR>", { silent = true, noremap = true })

-- scrolling bindings
vim.keymap.set({ "n", "v" }, "<A-Up>", "<C-y>", { silent = true, noremap = true })
vim.keymap.set({ "n", "v" }, "<A-Down>", "<C-e>", { silent = true, noremap = true })

-- remap shift arrow to move to end of word instead of next word
vim.keymap.set({ "n", "v" }, "<S-Right>", "e", { silent = true, noremap = true })
vim.keymap.set({ "n", "v" }, "<S-Left>", "ge", { silent = true, noremap = true })

-- map <leader>l to toggle relative line numbers
vim.keymap.set("n", "<leader>l", "<cmd>set relativenumber!<CR>", { silent = true })

-- map <leader>h to toggle highlight search
vim.keymap.set("n", "<leader>h", "<cmd>set hlsearch!<CR>", { silent = true })

-- Copy Json paths keymaps
local copy_path = require("copy-path")
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "json" },
	callback = function(args)
		vim.keymap.set("n", "<leader>cp", function()
			copy_path.copy_json_path({ register = "+" })
		end, { buffer = args.buf })
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	callback = function(args)
		vim.keymap.set("n", "<leader>cp", function()
			copy_path.copy_javascript_path({ register = "+" })
		end, { buffer = args.buf })
	end,
})

-- LSP Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
