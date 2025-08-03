-- this dashboard setup is ENTIRELY based off of the LazyVim dashboard,
-- and is more or less identical, save for a modification or two to 
-- one of the buttons.
return {
	{ "folke/snacks.nvim", opts = { dashboard = { enabled = false } } },

	{
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	},
	-- Dashboard. This runs when neovim starts, and is what displays
	-- the "CSMVim" banner.
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		enabled = true,
		init = false,
		opts = function()
			local dashboard = require("alpha.themes.dashboard")
			local logo = [[
   ██████╗███████╗███╗   ███╗██╗   ██╗██╗███╗   ███╗
  ██╔════╝██╔════╝████╗ ████║██║   ██║██║████╗ ████║
  ██║     ███████╗██╔████╔██║██║   ██║██║██╔████╔██║
  ██║     ╚════██║██║╚██╔╝██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ╚██████╗███████║██║ ╚═╝ ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═════╝╚══════╝╚═╝     ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
        ]]

			dashboard.section.header.val = vim.split(logo, "\n")

			-- Replace LazyVim-specific buttons with general alternatives
			dashboard.section.buttons.val = {
				dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
                dashboard.button("n", " " .. " New File ", function()
                    local file_path = vim.fn.input("New file path (relative to cwd): ", "", "file")
                    if file_path ~= "" then
                        if vim.fn.filereadable(file_path) == 1 then
                            print("Error: File already exists!")
                        else
                            -- create parent directories if needed
                            vim.fn.mkdir(vim.fn.fnamemodify(file_path, ":h"), "p")
                            vim.cmd("e " .. file_path)
                        end
                    end
                end),
				dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <cr>"),
				dashboard.button("g", " " .. " Find text", "<cmd> Telescope live_grep <cr>"),
				dashboard.button("c", " " .. " Config", "<cmd> e $MYVIMRC <cr>"),
				dashboard.button("s", " " .. " Restore Session", "<cmd> RestoreSession <cr>"),
				dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
			}

			-- Apply styling
			for _, button in ipairs(dashboard.section.buttons.val) do
				button.opts.hl = "AlphaButtons"
				button.opts.hl_shortcut = "AlphaShortcut"
			end
			dashboard.section.header.opts.hl = "AlphaHeader"
			dashboard.section.buttons.opts.hl = "AlphaButtons"
			dashboard.section.footer.opts.hl = "AlphaFooter"
			dashboard.opts.layout[1].val = 8
			return dashboard
		end,
		config = function(_, dashboard)
			-- close Lazy if it's open and re-open when the dashboard is ready
			if vim.o.filetype == "lazy" then
				vim.cmd.close()
				vim.api.nvim_create_autocmd("User", {
					once = true,
					pattern = "AlphaReady",
					callback = function()
						require("lazy").show()
					end,
				})
			end

			require("alpha").setup(dashboard.opts)

			-- Show startup stats in footer
			vim.api.nvim_create_autocmd("User", {
				once = true,
				pattern = "AlphaReady",
				callback = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					dashboard.section.footer.val = "⚡ Neovim loaded "
						.. stats.loaded
						.. "/"
						.. stats.count
						.. " plugins in "
						.. ms
						.. "ms"
					pcall(vim.cmd.AlphaRedraw)
				end,
			})
		end,
	},
}

