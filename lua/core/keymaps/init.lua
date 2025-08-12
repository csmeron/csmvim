---@diagnostic disable: undefined-global
local util = require("core.util")

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = false })

-- Some keymaps are defined in their respective plugins' specs, such as
-- bufferline, for example, as its mappings are part of its setup.

-- generic maps that don't fit any specific category yet
-- general save/copy
util.map("n", "<C-s>", "<cmd>w<CR>", opts) -- general save file
util.map("n", "<C-c>", "<cmd>%y+<CR>", opts) -- general copy (entire) file
util.map("v", "<", "<gv", opts)
util.map("v", ">", ">gv", opts)

util.map("n", "<leader>x", function()
    Snacks.bufdelete(n)
end, { desc = "Close Current Buffer" })
util.load_directory("core.keymaps", { exclude = { "init" } })
