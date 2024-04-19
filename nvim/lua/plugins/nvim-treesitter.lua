-- Code Tree Support / Syntax Highlighting
return {
    -- https://github.com/nvim-treesitter/nvim-treesitter
    'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    dependencies = {
        -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { "lua", "typescript", "javascript", "markdown", "html", "css", "vimdoc", "diff", "xml", "json", "yaml", "c_sharp" },
    },
    config = function(_, opts)
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
    end
}

