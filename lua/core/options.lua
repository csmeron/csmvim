-- nvim options
---@diagnostic disable: undefined-global
local o = vim.opt

-- general options
o.clipboard = "unnamedplus" -- use system clipboard
o.completeopt = { "menu", "menuone", "noselect" } -- completion options
o.mouse = "a" -- enable mouse support
o.cursorline = true -- comment/uncomment to enable cursor line highlighting
o.cursorlineopt = "number" -- highlight the number under the cursor

-- tabs/indentation
o.expandtab = true -- use spaces instead of tabs
o.shiftwidth = 4 -- number of spaces to use for each step of indent
o.tabstop = 4 -- number of spaces that a <Tab> counts for
o.softtabstop = 4 -- number of spaces that a <Tab> counts for while editing
o.smartindent = true -- enable smart indentation

o.ignorecase = true -- ignore case in search patterns
o.smartcase = true -- override 'ignorecase' if search pattern contains uppercase letters

-- ui/numbers/etc.
o.number = true -- enable line numbers
o.relativenumber = false -- can be toggled with <leader>rn, defined in keymaps.lua
o.numberwidth = 4
o.splitbelow = true
o.splitright = true
o.showmode = true -- temporary, will be using lualine later

-- searching
o.incsearch = true -- incremental search
o.hlsearch = true -- highlight search results
