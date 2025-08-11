-- Spec for setting up colorschemes

local theme_list = {
	"kanagawa-wave",
	"kanagawa-dragon",
	"kanagawa-lotus",
	"everforest",
	"rose-pine",
	"onedark",
	"catppuccin-frappe",
	"catppuccin-macchiato",
	"catppuccin-mocha",
	"nord",
}

return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		---@type string|fun()
		config = function()
			require("themery").setup({
				themes = theme_list,
				livePreview = true,
			})
		end,
	},

	-- Kanagawa
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		---@type string|fun()
		config = function()
			require("kanagawa").setup({
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
			})
		end,
	},

	-- Everforest
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		---@type string|fun()
		config = function()
			require("everforest").setup({
				background = "hard", -- "soft", "medium", "hard"
				transparent_background_level = 0.1, -- 0 to 1
				dim_inactive_windows = true,
				styles = {
					comments = "italic",
					keywords = "bold",
					variables = "italic",
				},
			})
		end,
	},

	-- Rose Pine
	{
		"rose-pine/neovim",
		priority = 1000,
		name = "rose-pine",
	},

	-- Onedark
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "darker",
			})
		end,
	},

	-- Catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- Nord
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		priority = 1000,
	},
}
