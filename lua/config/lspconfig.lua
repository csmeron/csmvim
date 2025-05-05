-- custom lspconfig, also loads defaults set
-- in lspconfig-defaults.lua

-- load defaults
require("config.lspconfig-defaults")

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require("config.lspconfig-defaults")
local config = require("config.lspconfig-defaults")

-- for LSPs with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

local on_attach = config.on_attach
local capabilities = config.capabilities

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

lspconfig.marksman.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filestypes = { "markdown" },
})

lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "lua" },
})