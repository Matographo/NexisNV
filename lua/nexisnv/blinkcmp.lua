return {
	"saghen/blink.cmp",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-emoji",
		"kristijanhusak/vim-dadbod-completion",
		"kristijanhusak/cmp-dadbod",
	},
	enabled = true,
	opts = {
		sources = {
			default = { "lazydev", "lsp", "path", "buffer", "luasnip", "emoji", "dadbod" },
			-- providers = {
			-- 	lazydev = {
			-- 		name = "LazyDev",
			-- 		module = "lazydev.integrations.blink",
			-- 		score_offset = 1000,
			-- 	},
			-- 	luasnip = {
			-- 		name = "LuaSnip",
			-- 		module = "cmp_luasnip",
			-- 		score_offset = 900,
			-- 	},
			-- 	snippets = {
			-- 		name = "Snippets",
			-- 		module = "cmp_snippets",
			-- 		score_offset = 800,
			-- 	},
			-- 	buffer = {
			-- 		name = "Buffer",
			-- 		module = "cmp_buffer",
			-- 		score_offset = 700,
			-- 	},
			-- 	path = {
			-- 		name = "Path",
			-- 		module = "cmp_path",
			-- 		score_offset = 600,
			-- 	},
			-- 	emoji = {
			-- 		name = "Emoji",
			-- 		module = "cmp_emoji",
			-- 		score_offset = 500,
			-- 	},
			-- 	lsp = {
			-- 		name = "LSP",
			-- 		module = "cmp_nvim_lsp",
			-- 		score_offset = 400,
			-- 	},
			-- 	dadbod = {
			-- 		name = "Dadbod",
			-- 		module = "cmp_dadbod",
			-- 		score_offset = 300,
			-- 	},
			--
			-- },
		},
	},
}
