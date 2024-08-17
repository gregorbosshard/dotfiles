-- Code Tree Support / Syntax Highlighting
return {
    -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    dependencies = {
        -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "lua",
            "typescript",
            "javascript",
            "markdown",
            "markdown_inline",
            "html",
            "css",
            "vimdoc",
            "diff",
            "xml",
            "json",
            "yaml",
            "c_sharp",
            "dockerfile",
            "python",
        },
    },
    config = function(_, opts)
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
    end,
}
