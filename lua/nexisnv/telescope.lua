return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "🔍 Finde Datei" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "🔍 Durchsuche Inhalte" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "📂 Geöffnete Dateien" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "❓ Hilfe anzeigen" },
	},
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					width = 0.7,
					height = 0.85,
					prompt_position = "top",
					preview_width = 0.6,
					preview_cutoff = 10,
				},
				sorting_strategy = "ascending",
				prompt_prefix = "⌕ ",
				selection_caret = "󰅂  ",
				pickers = {
					find_files = {
						theme = "dropdown",
					},
					live_grep = {
						theme = "ivy",
					},
				},
				mappings = {
					i = {
						["<CR>"] = actions.select_default + actions.center,
						["<C-x>"] = actions.select_horizontal,
						["<C-v>"] = actions.select_vertical,
						["<C-t>"] = actions.select_tab,
					},
					n = {
						["<CR>"] = actions.select_default + actions.center,
					},
				},
			},
		})
	end
}
