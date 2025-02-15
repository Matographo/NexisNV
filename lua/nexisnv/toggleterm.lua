return {

	"akinsho/toggleterm.nvim",
	version = "*", -- Neueste Version automatisch holen
	config = function()
		require("toggleterm").setup({
			size = 20, -- Höhe des Terminals (bei horizontalem Modus)
			open_mapping = [[<C-t>]], -- Toggle mit `CTRL + T`
			hide_numbers = true, -- Versteckt Zeilennummern
			shade_terminals = true, -- Abdunkelung für besseren Kontrast
			shading_factor = 2, -- Dunkelt das Terminal ab (1-3)
			start_in_insert = true, -- Startet immer im Insert-Mode
			persist_size = true, -- Behält Terminalgröße bei
			direction = "float", -- Optionen: "horizontal", "vertical", "float", "tab"
			close_on_exit = true, -- Schließt das Terminal, wenn der Prozess beendet ist
			shell = vim.o.shell, -- Verwendet die Standard-Shell
			float_opts = {
				border = "curved", -- "single", "double", "shadow", "curved"
				winblend = 3, -- Transparenz (0 = voll sichtbar, 100 = komplett unsichtbar)
			},
		})
	end

}
