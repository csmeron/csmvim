return {
	-- auto pairs
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		opts = {
			modes = { insert = true, command = true, terminal = false },
			-- skip autopair when next character is any of these
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			-- skip autopair when the cursor is inside these treesitter nodes
			skip_ts = { "string" }, -- to make strings neater and not annoying as balls
			-- skip autopair when next character is a closing pair and there are more
			-- closing pairs than opening pairs
			skip_unbalanced = true,
			-- better deal with markdown code blocks
			markdown = true,
		},
	},
	-- better comments (W Folke)
	{
		"folke/ts-comments.nvim",
		event = "VeryLazy",
		opts = {},
	},
	-- incremental renaming
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		opts = {},
	},
}
