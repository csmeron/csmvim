-- Remember to use `:h <option>` if needed, idiot
local opt = vim.opt

vim.cmd("colorscheme catppuccin")

-- general
opt.clipboard = 'unnamedplus'
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.mouse = 'a'
-- opt.cursorline = true
opt.cursorlineopt = number

-- tabs/indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

-- ui/numbers
opt.number = true
opt.relativenumber = true
opt.splitbelow = true
opt.splitright = true
opt.showmode = false

-- searching
opt.incsearch = true
opt.hlsearch = false

-- other
opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]