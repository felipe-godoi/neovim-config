require("fzf-lua").setup({
	defaults = { git_icons = false },
	files = {
		hidden = true,
	},
	winopts = {
		preview = {
			vertical = "down:45%", -- A configuração vertical da janela de preview
			scrollbar = "float", -- Mostrar a scrollbar na janela de preview
			scroll_fn = function(opts, direction)
				-- Implementação customizada para rolar a janela de preview
				if direction > 0 then
					vim.cmd("normal! j")
				else
					vim.cmd("normal! k")
				end
			end,
		},
	},
	keymap = {
		builtin = {
			true,
			-- Define os mapeamentos customizados
			["<C-j>"] = "preview-down", -- Scroll para baixo
			["<C-k>"] = "preview-up", -- Scroll para cima
		},
		fzf = {
			true,
			-- Define os mapeamentos customizados
			["ctrl-j"] = "down",
			["ctrl-k"] = "up",
		},
	},
})
