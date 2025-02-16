return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer", -- Buffer-Kompletion (zuvor gesehene Wörter)
		"hrsh7th/cmp-path", -- Pfad-Kompletion
		"hrsh7th/cmp-cmdline", -- Kommandokompletion in `:`
		"hrsh7th/cmp-nvim-lsp", -- LSP-Kompletion
		"saadparwaiz1/cmp_luasnip", -- Snippet-Kompletion
		"L3MON4D3/LuaSnip", -- Snippet-Engine
		"rafamadriz/friendly-snippets", -- Vorgefertigte Snippets
		"hrsh7th/cmp-emoji",
		"onsails/lspkind-nvim",
		"tpope/vim-dadbod",
	},
	event = "InsertEnter",
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		local types = require("cmp.types")
		local str = require("cmp.utils.str")

		require("luasnip.loaders.from_vscode").lazy_load() -- Lädt VSCode-Snippets

		cmp.setup({
			experimental = {
				ghost_text = true,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "emoji" },
				{ name = "cmp_dadbod" },
			}),
			window = {
				completion = cmp.config.window.bordered({winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder"}),
				documentation = cmp.config.window.bordered({winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder"}),
			},
			formatting = {
				fields = {
					cmp.ItemField.Abbr,
					cmp.ItemField.Kind,
					cmp.ItemField.Menu,
				},
				format = lspkind.cmp_format {
					mode = "symbol_text",
					maxwidth = 60,
					before = function(entry, vim_item)
						vim_item.menu = ({
							nvim_lsp = "ﲳ",
							nvim_lua = "",
							treesitter = "",
							path = "ﱮ",
							buffer = "﬘",
							zsh = "",
							luasnip = "",
							spell = "暈",
						})[entry.source.name]

						-- Get the full snippet (and only keep first line)
						local word = entry:get_insert_text()
						if entry.completion_item.insertTextFormat == types.lsp.InsertTextFormat.Snippet then
							word = vim.lsp.util.parse_snippet(word)
						end
						word = str.oneline(word)
						if
						    entry.completion_item.insertTextFormat == types.lsp.InsertTextFormat.Snippet
						    and string.sub(vim_item.abbr, -1, -1) == "~"
						then
							word = word .. "~"
						end
						vim_item.abbr = word

						return vim_item
					end,
				},
			},
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
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
			}),
		})
	end

}
