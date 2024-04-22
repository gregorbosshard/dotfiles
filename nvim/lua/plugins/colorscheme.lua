-- Catppuccin Theme
return {
    -- https://github.com/catppuccin/nvim
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "macchiato", -- "latte, frappe, macchiato, mocha"
        integrations = {
            nvimtree = true,
            treesitter = true,
            telescope = { enable = true },
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd("colorscheme catppuccin")
    end,
}
