-- options for conform
local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		css = { "prettierd", "prettier", stop_after_first = true },
		html = { "prettierd", "prettier", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		-- these options are passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options