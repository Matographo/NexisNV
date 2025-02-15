return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufReadPost",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-refactor",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "java", "lua", "python" },
			highlight = { enable = true },
			indent = { enable = true }
		})
	end

}
