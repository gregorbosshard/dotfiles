return {
	-- https://github.com/mfussenegger/nvim-dap-ui
	"rcarriga/nvim-dap-ui",
	dependencies = {
		-- https://github.com/mfussenegger/nvim-dap
		"mfussenegger/nvim-dap",
		-- https://github.com/theHamsta/nvim-dap-virtual-text
		"theHamsta/nvim-dap-virtual-text", -- inline variable text while debugging
		-- https://github.com/nvim-telescope/telescope-dap.nvim
		"nvim-telescope/telescope-dap.nvim", -- telescope integration with dap
		"nvim-neotest/nvim-nio",
	},
	event = "VeryLazy",
	opts = { floating = { border = "rounded" } },
	config = function(_, opts)
		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end
		dapui.setup(opts)
	end,
}
