-- Base LSP file (Does not include all configs and whatnot)
return {
	-- plenary for utilities (might be relocated later)
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_pending = "",
					package_installed = "",
					package_uninstalled = "",
				},
			},
			ensure_installed = {
				"stylua",
				"lua_ls",
			},
		},
	},
	-- lsp-config
	{
		"neovim/nvim-lspconfig",
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {},
			max_concurrent_installers = 10,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
}
