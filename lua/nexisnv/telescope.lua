return {


	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" }, -- Plenary ist eine Abhängigkeit für Telescope
	cmd = "Telescope", -- Lazy-load: Nur laden, wenn `:Telescope` aufgerufen wird
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
