return {
    --  https://github.com/Zeioth/compiler.nvim
    "Zeioth/compiler.nvim",
    event = "VeryLazy",
    dependencies = {
        "stevearc/overseer.nvim",
    },
    cmd = {
        "CompilerOpen",
        "CompilerToggleResults",
        "CompilerRedo",
        "CompilerStop",
    },
    opts = {},
}
