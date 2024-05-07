return {
    -- https://github.com/nvim-neotest/neotest
    "nvim-neotest/neotest",
    event = "VeryLazy",
    cmd = { "Neotest" },
    dependencies = {
        "Issafalcon/neotest-dotnet",
    },
    opts = function()
        return {
            -- your neotest config here
            adapters = {
                require("neotest-dotnet"),
            },
        }
    end,
    config = function(_, opts)
        -- get neotest namespace (api call creates or returns namespace)
        local neotest_ns = vim.api.nvim_create_namespace("neotest")
        vim.diagnostic.config({
            virtual_text = {
                format = function(diagnostic)
                    local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                    return message
                end,
            },
        }, neotest_ns)
        require("neotest").setup(opts)
    end,
}
