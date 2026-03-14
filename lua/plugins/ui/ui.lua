------------------------------
--- Primary UI plugin spec ---
------------------------------

--- Icon imports
---@diagnostic disable: undefined-global, different-requires
local iconfig = require("core.icons")

return {
    -- lualine to replace status bar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- fore file icons
			"Smiteshp/nvim-navic", -- for LSP symbols
			"meuter/lualine-so-fancy.nvim",
		},
	},

    -- mini.icons
	{
		"echasnovski/mini.icons",
		lazy = true,
		opts = {
			file = {
				[".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
				["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
			},
			filetype = {
				dotenv = { glyph = "", hl = "MiniIconsYellow" },
			},
		},
		init = function()
			package.preload["nvim-web-devicons"] = function()
				require("mini.icons").mock_nvim_web_devicons()
				return package.loaded["nvim-web-devicons"]
			end
		end,
	},
    -- extra ui components
	{ "MunifTanjim/nui.nvim", lazy = true },
}