---@diagnostic disable: undefined-global

-- This is the file for any utility functions
local M = {}

-- Keymap helper, primarily used in core/keymaps
M.map = function(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts or { noremap = true, silent = true })
end

function M.load_directory(module_prefix, opts)
	local exclude = {}
	for _, name in ipairs(opts.exclude or {}) do
		exclude[name] = true
	end

	local path = vim.fn.stdpath("config") .. "/lua/" .. module_prefix:gsub("%.", "/")
	for name, type in vim.fs.dir(path) do
		if type == "file" and name:match("%.lua$") then
			local base = name:gsub("%.lua$", "")
			if not exclude[base] then
				require(module_prefix .. "." .. base)
			end
		end
	end
end

return M
