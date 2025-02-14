return {
	"jedrzejboczar/possession.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
    require("possession").setup({
        autosave = {
            current = true,  -- Automatisch speichern, wenn eine neue Session erstellt wird
            tmp = true,      -- Temporäre Sessions speichern
            on_load = true,  -- Automatisch gespeicherte Sessions laden
            on_quit = true,  -- Session beim Beenden speichern
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
        silent = false, -- Debugging: auf `false` lassen, wenn du Meldungen willst
    })
end

}
