-- https://neovim.io/doc/user/quickref.html#Q_op

local opt = vim.opt

-- Line Numbers
opt.relativenumber = true -- show relative line number in front of each line 
opt.number = true -- print the line number in front of each line

-- Tabs & Indentation
opt.tabstop = 4 --number of spaces that <Tab> in file uses 
opt.softtabstop = 4 --number of spaces that <Tab> uses while editing 
opt.shiftwidth = 4 -- number of spaces to use for (auto)indent step
opt.expandtab = true -- use spaces when <Tab> is inserted
opt.autoindent = true -- take indent for new line from previous line
opt.smartindent = true -- smart autoindenting for C programs
vim.bo.softtabstop = 2 -- number of spaces to indent the code 

-- Line Wrapping
opt.wrap = false -- long lines wrap and continue on the next line

-- Search Settings
opt.incsearch = true  -- highlight match while typing search pattern
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true  -- no ignore case when pattern has uppercase

-- Cursor Line
opt.cursorline = true -- highlight the screen line of the cursor
opt.cursorlineopt = "screenline" -- settings for 'cursorline'

-- Appearance
opt.termguicolors = true --enable 24-bit RGB color in the TUI 
vim.diagnostic.config({
    float = { border = "rounded" }, 
    virtual_text = true,
})

-- no backup/autosave files
opt.swapfile = false -- whether to use a swapfile for a buffer
opt.backup = false --keep backup file after overwriting a file 
