local easy = _G.easy.projectmanager
return {
	'charludo/projectmgr.nvim',
	lazy = false, -- important!
	config = function()
		require("projectmgr").setup({

			autogit = {
				enabled = easy.auto_pull or true,
				command = "git pull --ff-only",
			},
			reopen = false,
			session = { enabled = true, file = "Session.vim" },
			shada = { enabled = false, file = "main.shada" },
			scripts = {
				enabled = true,
				file_startup = "startup.sh",
				file_shutdown = "shutdown.sh",
			},
		})
end
}
