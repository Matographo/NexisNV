-- Layzinit is the entry point for the lazy plugin manager
-- Every plugin is loaded in a lazy manner, so that the startup time is reduced
-- If you want another folder structure, you can change the path in the require statement


require("lazy").setup({
	{ import = "nexisnv.lazydev" },
	{ import = "nexisnv.init" },
	{ import = "colorschemes.init" },
	{ import = "plugins.init" },
})
