return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lspconfig = require("mason-lspconfig")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"clangd",
				"jdtls",
				"lua_ls",
				"svelte",
				"graphql",
				"emmet_ls",
				"pyright",
				"html",
				"cssls",
				"jsonls",
				"yamlls"
			}
		})
	end
}
