-- core files needed for optimal functionality
return {
	-- plenary for utility
	"nvim-lua/plenary.nvim",

	-- conform for formatting
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- comment for no format on save
		opts = require("config.conform"),
	},

	-- mason for package management + lsp-config for it
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		opts = function() 
			return require "config.mason"
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("config.lspconfig")
		end,
	},

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treeistter/nvim-treesitter" },
        cmd = "Telescope",
        opts = function()
            return require("config.telescope")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        opts = function()
            return require("config.treesitter")
        end,
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("config.lspconfig")
        end,
    },
}