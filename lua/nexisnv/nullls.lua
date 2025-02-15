return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					require("null-ls").builtins.formatting.prettier,
				},
			})
		end,
	}
}
