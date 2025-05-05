return {
	PATH = "skip",

	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},

	ensure_installed = {
		"isort",
		"black",
		"mypy",
		"ruff",
		"pyright",
		"prettier",
		"prettierd",
		"stylua",
		"debugpy",
		"vale",
		"marksman",
		"lua-language-server",
	},

	max_concurrent_installers = 10,
}