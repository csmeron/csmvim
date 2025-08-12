-- Bootstrap lazy.nvim and import modules
-- Import plugins (these will be used in core.lazy)
local plugs = {
	{ import = "plugins.ui" },
	{ import = "plugins.coding" },
	{ import = "plugins.snacks" },
    { import = "plugins.editor" },
}
-- Import core modules
local core = {
	"core.keymaps",
	"core.options",
	"core.autocmds",
	"config.lualine.basic",
}

-- send plugins to the lazy bootstrap
require("core.lazy").setup(plugs)
-- require all core modules
for _, mod in ipairs(core) do
	require(mod)
end
