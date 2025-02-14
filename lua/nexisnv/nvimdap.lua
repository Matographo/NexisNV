return {

	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
	local dap = require("dap")
	local dapui = require("dapui")

	require("nexisnv.DAP.cpp").Init(dap)
	require("nexisnv.DAP.java").Init(dap)

	dapui.setup()

	dap.listeners.before.attach.dapui_config = function()
	  dapui.open()
	end
	dap.listeners.before.launch.dapui_config = function()
	  dapui.open()
	end
	dap.listeners.before.event_terminated.dapui_config = function()
	  dapui.close()
	end
	dap.listeners.before.event_exited.dapui_config = function()
	  dapui.close()
	end


	vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DapBreakpointSign', linehl = 'DapBreakpointLine', numhl = 'DapBreakpointNum' })
	vim.fn.sign_define('DapStopped', { text = '▶', texthl = 'DapStoppedSign', linehl = 'DapStoppedLine', numhl = 'DapStoppedNum' })
	vim.api.nvim_set_hl(0, 'DapBreakpointSign', { fg = '#ff0000', bold = true })

	vim.keymap.set('n', "<Leader>b", dap.toggle_breakpoint, {})
	vim.keymap.set('n', "<Leader>dc", dap.continue, {})
end

}
