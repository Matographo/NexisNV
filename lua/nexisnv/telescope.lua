return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" }, -- Plenary ist eine Abhängigkeit für Telescope
	cmd = "Telescope",                   -- Lazy-load: Nur laden, wenn `:Telescope` aufgerufen wird
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
						theme = "dropdown", -- Dropdown für eine kompakte Ansicht
					},
					live_grep = {
						theme = "ivy", -- Ivy für eine bessere Sucherfahrung
					},
				},
				mappings = {
					i = {
						["<CR>"] = actions.select_default + actions.center, -- Direkt öffnen & zentrieren
						["<C-x>"] = actions.select_horizontal, -- Datei im horizontalen Split öffnen
						["<C-v>"] = actions.select_vertical, -- Datei im vertikalen Split öffnen
						["<C-t>"] = actions.select_tab, -- Datei in neuem Tab öffnen
					},
					n = {
						["<CR>"] = actions.select_default + actions.center, -- Direkt öffnen im Normal Mode
					},
				},
			},
		})
	end

}
