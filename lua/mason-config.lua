require("mason").setup({
	ui = {
		icons = {
			package_installed = "",
			package_pending = "",
			package_uninstalled = "",
		},
	},
	ensure_installed = { "rust_analyzer", "html" },
})
