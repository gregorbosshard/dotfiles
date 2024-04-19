local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
vim.bo.softtabstop = 2

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.incsearch = true  -- starts searching as soon as typing, without enter needed
opt.ignorecase = true -- ignore letter case when searching
opt.smartcase = true  -- case insentive unless capitals used in searcher

-- Cursor Line
opt.cursorline = true
opt.cursorlineopt = 'screenline'


-- Appearance
opt.termguicolors = true
vim.diagnostic.config {
    float = { border = "rounded" }, -- add border to diagnostic popups
    virtual_text = true
}

-- no backup/autosave files
opt.swapfile = false
opt.backup = false
