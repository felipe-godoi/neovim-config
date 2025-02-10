require("nvim-tree").setup({
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	filters = {
		dotfiles = false,
		git_ignored = false,
	},
	update_focused_file = {
		enable = true,
		update_root = true,
		update_cwd = false,
	},
	renderer = {
		group_empty = true,
		full_name = true,
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				item = "│ ",
				none = "  ",
			},
		},
		icons = {
			webdev_colors = true,
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "", -- 
					staged = "",
					unmerged = "",
					renamed = "➜",
					untracked = "",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		show_on_open_dirs = true,
		severity = {
			min = vim.diagnostic.severity.ERROR,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
})
