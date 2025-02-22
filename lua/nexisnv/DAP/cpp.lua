-- A DAP configuration for C++ debugging using the cpptools extension
local M = {}
function M.Init(dap)
	dap.adapters.cppdbg = {
		id = 'cppdbg',
		type = 'executable',
		command = '/absolute/path/to/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
	}

	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			stopAtEntry = true,
		},
		{
			name = 'Attach to gdbserver :1234',
			type = 'cppdbg',
			request = 'launch',
			MIMode = 'gdb',
			miDebuggerServerAddress = 'localhost:1234',
			miDebuggerPath = '/usr/bin/gdb',
			cwd = '${workspaceFolder}',
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
		},
	}
end

return M
