---@diagnostic disable: undefined-global
local map = require("core.util").map

map("n", "<leader>n", "<cmd>set nu!<CR>", opts) -- toggles line numbers
map("n", "<leader>rn", "<cmd>set rnu!<CR>", opts) -- toggles relative line numbers
map("n", "<leader>/", "gcc", { remap = true, silent = true }) -- toggle comment
map("v", "<leader>/", "gc", { remap = true, silent = true }) -- toggle comment
