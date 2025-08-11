---@diagnostic disable: undefined-global
local util = require("core.util")

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })

util.load_directory("core.keymaps", { exclude = { "init" } })
