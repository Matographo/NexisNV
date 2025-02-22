return {

	"akinsho/toggleterm.nvim",
	version = "*",
	cmd = "ToggleTerm",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-t>]],
			hide_numbers = true,
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 3,
			},
		})
	end

}
