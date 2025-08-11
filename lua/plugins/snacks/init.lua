---@diagnostic disable: undefined-global
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		animate = { enabled = true },
		input = { enabled = true },
		git = { enabled = true },
		notifier = { enabled = true },
		scroll = { enabled = true },
		toggle = { map = vim.keymap.set },
	},
	import = "plugins.snacks",
}
