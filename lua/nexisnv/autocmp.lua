return {


	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer", -- Buffer-Kompletion (zuvor gesehene Wörter)
		"hrsh7th/cmp-path",  -- Pfad-Kompletion
		"hrsh7th/cmp-cmdline", -- Kommandokompletion in `:`
		"hrsh7th/cmp-nvim-lsp", -- LSP-Kompletion
		"saadparwaiz1/cmp_luasnip", -- Snippet-Kompletion
		"L3MON4D3/LuaSnip",  -- Snippet-Engine
		"rafamadriz/friendly-snippets", -- Vorgefertigte Snippets
		"hrsh7th/cmp-emoji"
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load() -- Lädt VSCode-Snippets

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body) -- Verwende LuaSnip für Snippets
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "emoji" },
			})
		})
	end

}
