local easy = _G.easy.dashboad

local entries = {
	{ icon = "  ", desc = " Find File", action = "Telescope find_files", key = "f" },
	{ icon = "  ", desc = " Recent Files", action = "Telescope oldfiles", key = "r" },
	{ icon = "  ", desc = " Find Word", action = "Telescope live_grep", key = "w" },
	{ icon = "洛 ", desc = " New File", action = "ene | startinsert", key = "n" },
	{ icon = "  ", desc = " Bookmarks", action = "Telescope marks", key = "m" },
	{ icon = "  ", desc = " Restore Session", action = "SessionLoad", key = "s" },
	{ icon = "  ", desc = " Quit", action = "qa", key = "q" },
}
return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = easy.theme or "hyper", -- Alternativ: hyper, doom, default
			config = {
				header = easy.logo or {
					"","","","","",
					"███╗   ██╗███████╗██╗  ██╗██╗███████╗███╗   ██╗██╗   ██╗",
					"████╗  ██║██╔════╝╚██╗██╔╝██║██╔════╝████╗  ██║██║   ██║",
					"██╔██╗ ██║█████╗   ╚███╔╝ ██║███████╗██╔██╗ ██║██║   ██║",
					"██║╚██╗██║██╔══╝   ██╔██╗ ██║╚════██║██║╚██╗██║╚██╗ ██╔╝",
					"██║ ╚████║███████╗██╔╝ ██╗██║███████║██║ ╚████║ ╚████╔╝ ",
					"╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝  ",
				},
				center = easy.center or entries,
				packages = { enable = false },
				project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
				mru = {},
				footer = easy.message or { "Progress, not perfection!" }
			},
			hide = easy.hide or {
				statusline,
				tabline,
				winbar
			}
		})
	end

}
