---@diagnostic disable: undefined-global
local map = require("core.util").map
-- mappings related to opening menus

-- Exit to netrw
map("n", "<leader>pv", vim.cmd.Ex, opts, { desc = "Open netrw" })
-- Open explorer (Snacks)
map("n", "<leader>e", function()
    require("snacks").explorer()
end, { desc = "Toggle Explorer" })
map("n", "<C-e>", function()
    require("snacks").explorer()
end, { desc = "Toggle Explorer" })

-- Theme swapper
map("n", "<leader>th", "<cmd>Themery<CR>", { desc = "Open theme switcher" })
