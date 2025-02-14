local M = {}

function M.Init(dap)
	dap.adapters.java = function(callback)
	  local mason_registry = require("mason-registry")
	  local jdtls = mason_registry.get_package("java-debug-adapter")
	  local jar_path = jdtls:get_install_path() .. "/extension/server/com.microsoft.java.debug.plugin.jar"

	  callback({
	    type = "executable",
	    command = "java",
	    args = { "-jar", jar_path }
	  })
	end

	dap.configurations.java = {
	  {
	    type = "java",
	    request = "attach",
	    name = "Maven Debugging",
	    hostName = "127.0.0.1",
	    port = 5005
	  }
	}end

return M
