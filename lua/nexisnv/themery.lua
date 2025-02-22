return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"tokyonight",
				"gruvbox",
				"catppuccin",
				"nord",
				"dracula",
				"everforest",
				"nightfox",
				"onedark",
			},
			livePreview = true,
		})
	end

}
