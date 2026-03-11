-- Base `vim.opt variable
local o = vim.opt


-- General Options
o.clipboard = "unnamedplus" -- use system clipboard
o.completeopt = { "menu", "menuone", "noselect" } -- completion options
o.mouse = "a" -- enable mouse support
o.cursorline = true -- comment/uncomment to enable/disable cursor line highlighting
o.cursorlineopt = "number" -- highlight the number under the cursor

-- Tab/Indentation-related Options
o.expandtab = true -- enables usage of spaces instead of tabs
o.shiftwidth = 4 -- number of spaces to use for each step of indent
o.tabstop = 4 -- number of spaces that a <Tab> counts for
o.softtabstop = 4 -- number of spaces that a <Tab> counts for while editing
o.smartindent = true -- enables smart indentation (duh)

-- UI-related Options
o.number = true -- enables line numbers
o.relativenumber = false -- can be toggled with <leader>rn, defined in keymaps.lua
o.numberwidth = 4
o.splitbelow = true
o.splitright = true
o.showmode = true -- temporary, will use lualine in future

-- Search-related Options
o.incsearch = true -- incremental search
o.hlsearch = true
o.ignorecase = true -- ignore case by default when searching
o.smartcase = true -- override 'ignorecase' if search pattern contains uppercase characters

-- other
-- o.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]
