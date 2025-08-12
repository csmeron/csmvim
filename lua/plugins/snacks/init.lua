---@diagnostic disable: undefined-global
--- 
--- Some snacks modules are defined in separate specs.
--- For example, the explorer config is defined in plugins.editor.explore
--- This is just for sorting purposes, and it may change down the line
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
