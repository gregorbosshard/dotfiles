vim.loader.enable()

-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key to space
-- This has to be set before initializing lazy
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Initialize lazy with dynamic loading of anything in the plugins directory
local plugins = {
    { import = "plugins" },
}

local opts = {
    defaults = {
        lazy = true,
    },
    change_detection = {
        enabled = true, -- automatically check for config file changes and reload the ui
        notify = false, -- turn off notifications whenever plugin changes are made
    },
}

require("lazy").setup(plugins, opts)

require("core.options")
require("core.keymaps")
