local newfunc = vim.api.nvim_create_user_command


-- Copilot --
newfunc("ToggleCopilot", function()
	function ToggleCopilot()
		if vim.g.copilot_enabled == nil or vim.g.copilot_enabled then
			vim.g.copilot_enabled = false
		else
			vim.g.copilot_enabled = true
		end
	end
end, { nargs = 0 })




-- Github Integration --
newfunc("Gh", function(opts)
	local args = opts.args
	if args ~= "" then
		vim.cmd("Octo " .. args)
	else
		print("Nutze: :GH <Befehl>, z.B. :GH issue oder :GH pr")
	end
end, { nargs = "?" })

newfunc("Ghi", function(opts)
	local args = opts.args
	if args ~= "" then
		vim.cmd("Gh issue " .. args)
	else
		print("Nutze: :GHQ <Filter>, z.B. :GHQ assigned")
	end
end, { nargs = "?" })

newfunc("Ghp", function(opts)
	local args = opts.args
	if args ~= "" then
		vim.cmd("Gh pr " .. args)
	else
		print("Nutze: :GHP <Filter>, z.B. :GHP assigned")
	end
end, { nargs = "?" })
