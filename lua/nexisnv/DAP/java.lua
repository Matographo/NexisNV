-- A Configuration for Java Debugging


local M = {}

function M.Init(dap)
	dap.configurations.java = {
		{
			type = "java",
			request = "attach",
			name = "Debug (Attach) - Remote",
			hostName = "127.0.0.1",
			port = 5005,
		},
		{
			classPaths = {},
			projectName = "meinProjekt",
			javaExec = "java",
			mainClass = "com.example.Main",
			modulePaths = {},
			name = "Launch Main",
			request = "launch",
			type = "java"
		}
	}
end

return M
