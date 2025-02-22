return {
	"jedrzejboczar/possession.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("possession").setup({
			autosave = {
				current = true,
				tmp = true,
				on_load = true,
				on_quit = true,
			},
			plugins = {
				close_windows = {
					hooks = { "before_save", "before_load" },
				},
				delete_hidden_buffers = {
					hooks = { "before_load" },
				},
				nvim_tree = true,
				symbols_outline = true,
				tabby = true,
				dap = true,
			},
			silent = false,
		})
	end
}
