local easy = _G.easy.neotree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons", -- Optional, für Icons
	    "MunifTanjim/nui.nvim",
	},
	event = "VeryLazy",
	config = function()
    require("neo-tree").setup({
        close_if_last_window = true, -- Schließt Neo-tree, wenn es das letzte Fenster ist
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        log_level = "warn", -- 🔹 Verhindert nervige Meldungen
	filesystem = {
	    follow_current_file = { enabled = true }, -- Setze `false`, falls `true` ist
	    hijack_netrw = true,
	    use_libuv_file_watcher = true,
	    bind_to_cwd = true, -- Verhindert, dass Neo-tree automatisch geladen wird
	    auto_clean_after_session_restore = false,
	},
        window = {
            width = easy.width or 30, -- Standardbreite für das Neo-tree Fenster
	    position = easy.site or "left",
            mappings = easy.mappings or {
                ["<CR>"] = "open_with_window_picker", -- Öffnet mit Fenster-Picker
                ["o"] = "open",
                ["h"] = "close_node",
                ["l"] = "open",
            },
        },
        default_component_configs = {
            indent = {
                with_expanders = true, -- Zeigt Expand-Icons an
            },
        },
        -- 🔹 Event-Handler: Schließt Neo-tree automatisch, wenn eine Datei geöffnet wird
        event_handlers = {
            {
                event = "file_opened",
                handler = function()
                    require("neo-tree.command").execute({ action = "close" })
                end
            },
        }
    })
end

}
