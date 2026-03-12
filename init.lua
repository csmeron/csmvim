----------------------------------------------------
--- Init for Lazy bootstrap and module importing ---
----------------------------------------------------

-- Import plugins (these will be used in core.lazy)
local plugs = {
	{ import = "plugins.editor" },
}

-- Import core modules (things like keymaps, vim.opts, etc.)
local core = {
	"core.keymaps",
	"core.options",
}

-- Send plugins to the lazy bootstrap
require("core.lazy").setup(plugs)
-- require all core modules
for _, mod in ipairs(core) do
	require(mod)
end
