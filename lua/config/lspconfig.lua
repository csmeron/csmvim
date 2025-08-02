local iconfig = require("config.icons")

return {
	diagnostics = {
		underline = true,
		update_in_insert = false,
		virtual_text = {
			spacing = 4,
			source = "if_many",
			prefix = "●",
		},
		severity_sort = true,
		signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = iconfig.icons.diagnostics.Error,
				[vim.diagnostic.severity.WARN] = iconfig.icons.diagnostics.Warn,
				[vim.diagnostic.severity.HINT] = iconfig.icons.diagnostics.Hint,
				[vim.diagnostic.severity.INFO] = iconfig.icons.diagnostics.Info,
			},
		},
	},
	inlay_hints = {
		enabled = true,
		exclude = {},
	},
	codelens = {
		enabled = false,
	},
	capabilities = {
		workspace = {
			fileOperations = {
				didRename = true,
				willRename = true,
			},
		},
	},
	servers = {
		lua_ls = {
			settings = {
				Lua = {
					workspace = {
						checkThirdParty = false,
					},
					codeLens = {
						enable = true,
					},
					completion = {
						callSnippet = "Replace",
					},
					doc = {
						privateName = { "^_" },
					},
					hint = {
						enable = true,
						setType = false,
						paramType = true,
						paramName = "Disable",
						semicolon = "Disable",
						arrayIndex = "Disable",
					},
				},
			},
		},
	},
}
