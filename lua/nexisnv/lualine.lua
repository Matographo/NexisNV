return {


	"nvim-lualine/lualine.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" }, -- Falls Icons fehlen
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto", -- Passt sich automatisch an dein Farbschema an
				icons_enabled = true, -- Symbole aktivieren
				globalstatus = true, -- Statuszeile immer anzeigen
				section_separators = { left = '', right = '' },
				component_separators = { left = '', right = '' }
			},
			sections = {
				lualine_a = { "mode" }, -- NORMAL, INSERT, VISUAL, etc.
				lualine_b = { "branch" }, -- Zeigt den aktuellen Git-Branch
				lualine_c = { "filename" }, -- Zeigt den aktuellen Dateinamen
				lualine_x = { "filetype" }, -- Zeigt den Dateityp (Lua, Python, etc.)
				lualine_y = { "progress" }, -- Fortschrittsanzeige in der Datei
				lualine_z = { "os.date('%H:%M')" }, -- Zeigt die aktuelle Uhrzeit
			},
			globalstatus = true,
		})
	end

}
