-- Fuzzy finder
return {
    -- https://github.com/nvim-telescope/telescope.nvim
    'nvim-telescope/telescope.nvim',
    lazy = true,
    branch = '0.1.x',
    dependencies = {
        -- https://github.com/nvim-lua/plenary.nvim
        { 'nvim-lua/plenary.nvim' },
        {
            -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
    opts = {
        defaults = {
            file_ignore_patterns = {
                ".git",
                "node_modules",
            },
            layout_config = {
                vertical = {
                    width = 0.75
                }
            }
        }
    }
}
