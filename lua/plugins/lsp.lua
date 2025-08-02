-- core for LSP functionality
return {
    -- plenary for utilities (might move later)
    "nvim-lua/plenary.nvim",

    -- mason for package management + lsp-config
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_pending = "",
                    package_installed = "",
                    package_uninstalled = "",
                },
            },
            ensure_installed ={
                "stylua",
                "black",
                "prettier",
                "prettierd",
            },
        },
    },
    -- lsp-config
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.lspconfig")
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "pyright",
                "cssls",
            },
            max_concurrent_installers = 10,
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
}
