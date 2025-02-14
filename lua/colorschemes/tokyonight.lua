return {
   {
	"folke/tokyonight.nvim", -- Offizielles Tokyonight Repo
        lazy = false, -- Direkt laden
        priority = 1000, -- Wird früh geladen
        config = function()
            require("tokyonight").setup({
                style = "storm", -- Andere Optionen: "night", "moon", "day"
                transparent = false, -- Falls du Transparenz möchtest, setze `true`
                terminal_colors = true, -- Setzt Terminal-Farben auf Theme
            })
        end
    }
}
