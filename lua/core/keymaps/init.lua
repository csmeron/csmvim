---@diagnostic disable: undefined-global
local util = require("core.util")

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })

-- generic maps that don't fit any specific category yet
-- general save/copy
util.map("n", "<C-s>", "<cmd>w<CR>", opts) -- general save file
util.map("n", "<C-c>", "<cmd>%y+<CR>", opts) -- general copy (entire) file
util.map("v", "<", "<gv", opts)
util.map("v", ">", ">gv", opts)

util.load_directory("core.keymaps", { exclude = { "init" } })
