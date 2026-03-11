-- opts shorthand for convenience
local opts = {
    noremap = true,
    silent = true,
}

-- Basic Vim mappings
local map = vim.keymap.set
vim.g.mapleader = " "
map("n", "<leader>pv", vim.cmd.Ex, opts, { desc = "Back to netrw" })

