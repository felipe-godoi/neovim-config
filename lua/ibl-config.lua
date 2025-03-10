require("ibl").setup({
	indent = {
		char = "│",
		tab_char = "│",
	},
	whitespace = { remove_blankline_trail = true },
	scope = {
		enabled = true,
		show_start = false,
		show_end = false,
		include = {
			node_type = { ["*"] = { "*" } },
		},
	},
	
})
