local opts = {
    noremap = true,
    silent = true,
}
local map = vim.keymap.set

vim.g.mapleader = " "
map('n', '<leader>pv', vim.cmd.Ex, opts, { desc = "Back to netrw" })
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true, silent = false })

-- navigation
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- window navigation
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- resizing via arrows
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- toggles
map('n', '<leader>n', '<cmd>set nu!<CR>', opts) -- toggles line numbers
map('n', '<leader>rn', '<cmd>set rnu!<CR>', opts) -- toggles relative line numbers
map('n', '<leader>/', 'gcc', {remap = true}, opts) -- toggle comment
map('v', '<leader>/', 'gc', {remap = true}, opts) -- toggle comment

-- general save/copy
map('n', '<C-s>', '<cmd>w<CR>', opts) -- general save file
map('n', '<C-c>', '<cmd>%y+<CR>', opts) -- general copy (entire) file

-- visual xtras
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)