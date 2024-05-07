return {
	-- https://github.com/mfussenegger/nvim-dap
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		-- C#
		dap.adapters.coreclr = {
			type = "executable",
			command = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg",
			args = { "--interpreter=vscode" },
		}
		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function() -- Ask the user what executable wants to debug
					return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Program.exe", "file")
				end,
			},
		}
	end, -- of dap config
	dependencies = {
		"rcarriga/cmp-dap",
		"jay-babu/mason-nvim-dap.nvim",
	},
}
