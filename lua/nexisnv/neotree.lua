local easy = _G.easy.neotree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = true,
	cmd = "Neotree",
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			log_level = "warn",
			filesystem = {
				follow_current_file = { enabled = true },
				hijack_netrw = true,
				use_libuv_file_watcher = true,
				bind_to_cwd = true,
				auto_clean_after_session_restore = false,
			},
			window = {
				width = easy.width or 30,
				position = easy.site or "left",
				mappings = easy.mappings or {
					["<CR>"] = "open_with_window_picker",
					["o"] = "open",
					["h"] = "close_node",
					["l"] = "open",
				},
			},
			default_component_configs = {
				indent = {
					with_expanders = true,
				},
			},
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
