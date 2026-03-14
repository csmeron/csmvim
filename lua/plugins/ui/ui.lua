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
}