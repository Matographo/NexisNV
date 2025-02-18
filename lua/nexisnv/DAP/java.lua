local M = {}

function M.Init(dap)
	-- dap.adapters.java = {
	-- 	type = "server",
	-- 	host = "127.0.0.1",
	-- 	port = 5005,  -- Der Standardport für JVM-Debugging
	-- }

	-- dap.configurations.java = {
	-- 	{
	-- 		type = "java",
	-- 		request = "attach",
	-- 		name = "Attach to Maven Process",
	-- 		hostName = "127.0.0.1",
	-- 		port = 5005,
	-- 	},
	-- }
	dap.configurations.java = {
		{
			type = "java",
			request = "attach",
			name = "Debug (Attach) - Remote",
			hostName = "127.0.0.1",
			port = 5005,
		},
		{
			classPaths = {}, -- Automatisch von `nvim-jdtls` gesetzt
			projectName = "meinProjekt",
			javaExec = "java",
			mainClass = "com.example.Main",
			modulePaths = {}, -- Falls du Java 9+ Module nutzt
			name = "Launch Main",
			request = "launch",
			type = "java"
		}
	}
end

return M
