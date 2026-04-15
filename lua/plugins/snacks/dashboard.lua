---@diagnostic disable: undefined-global

return {
	-- pickers for extra functionality
	-- multiple included so I can swap if desired
	{ "echasnovski/mini.pick", version = false },
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	},

	-- Snacks dashboard
	{
		"snacks.nvim",
		opts = {
			picker = { enabled = true },
			dashboard = {
				enabled = true,
				preset = {
					pick = nil,

					keys = {
						{
							icon = " ",
							key = "f",
							desc = "Find File",
							action = ":lua Snacks.dashboard.pick('files')",
						},
						{
							icon = " ",
							key = "n",
							desc = "New File",
							action = function()
								-- function to create file and any directories leading to it.
								local file_path = vim.fn.input("New file path (relative to cwd): ", "", "file")
								if file_path ~= "" then
									-- check if file already exists
									if vim.fn.filereadable(file_path) == 1 then
										print("Error: File already exists!")
									else
										-- create parent directories if needed
										vim.fn.mkdir(vim.fn.fnamemodify(file_path, ":h"), "p")
										vim.cmd("e " .. file_path)
									end
								end
							end,
						},
						{
							icon = " ",
							key = "g",
							desc = "Find Text",
							action = ":lua Snacks.dashboard.pick('live_grep')",
						},
						{
							icon = " ",
							key = "r",
							desc = "Recent Files",
							action = ":lua Snacks.dashboard.pick('oldfiles')",
						},
						{
							icon = " ",
							key = "c",
							desc = "Config",
							action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
						},
						{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
						{
							icon = "󰒲 ",
							key = "L",
							desc = "Lazy",
							action = ":Lazy",
							enabled = package.loaded.lazy ~= nil,
						},
						{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
					},
					-- used by the `header` section
					header = [[
   ██████╗███████╗███╗   ███╗██╗   ██╗██╗███╗   ███╗
  ██╔════╝██╔════╝████╗ ████║██║   ██║██║████╗ ████║
  ██║     ███████╗██╔████╔██║██║   ██║██║██╔████╔██║
  ██║     ╚════██║██║╚██╔╝██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ╚██████╗███████║██║ ╚═╝ ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═════╝╚══════╝╚═╝     ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
                    ]],
				},
				sections = {
					{ section = "header" },
					{
						pane = 2,
						section = "terminal",
						cmd = "square",
						height = 5,
						padding = 1,
					},
					{ section = "keys", gap = 1, padding = 1 },
					{
						pane = 2,
						icon = " ",
						title = "Recent Files",
						section = "recent_files",
						indent = 2,
						padding = 1,
					},
					{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{
						pane = 2,
						icon = " ",
						title = "Git Status",
						section = "terminal",
						enabled = function()
							return Snacks.git.get_root() ~= nil
						end,
						cmd = "git status --short --branch --renames",
						height = 5,
						padding = 1,
						ttl = 5 * 60,
						indent = 3,
					},
					{ section = "startup" },
				},
			},
            -- stylua: ignore
            keys = {
                { "<leader>n", function()
                    if Snacks.config.picker and Snacks.config.picker.enabled then
                        Snacks.picker.notifications()
                    else
                        Snacks.notifier.show_history()
                    end
                end, desc = "Notification History" },
                { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
            },
		},
	},
}
