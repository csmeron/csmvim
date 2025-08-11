---@diagnostic disable: undefined-global
vim.uv = vim.uv or vim.loop

local M = {}

---@param opts? CoreConfig
function M.setup(opts)
	require("core").setup(opts)
end

return M
