-- This is the main entry point for the Plugin configuration.
-- Every Plugin configuration should be required here.
-- This is the Main Config for NexisNV but if you want to disable some plugins
-- feel free to comment out the require statement for that plugin.
-- If you want to add a new plugin, you can add it in the folder plugins
-- because there are non-NexisNV plugins.


return {
	{ require("nexisnv.dashboard") },
	{ require("nexisnv.themery") },
	{ require("nexisnv.toggleterm") },
	{ require("nexisnv.dadbod") },
	{ require("nexisnv.noice") },
	{ require("nexisnv.autocmp") },
	{ require("nexisnv.telescope") },
	{ require("nexisnv.lspconfig") },
	{ require("nexisnv.mason") },
	{ require("nexisnv.treesitter") },
	{ require("nexisnv.treesitter_textobject") },
	{ require("nexisnv.lazygit") },
	{ require("nexisnv.lualine") },
	{ require("nexisnv.bufferline") },
	{ require("nexisnv.projectmgr") },
	{ require("nexisnv.neotree") },
	{ "nvim-neotest/nvim-nio", },
	{ require("nexisnv.nvimdap") },
	{ require("nexisnv.neotest") },
	{ require("nexisnv.whichkey") },
	{ require("nexisnv.markdownrender") },
	{ require("nexisnv.trouble") },
	{ require("nexisnv.leap") },
	{ require("nexisnv.gitblame") },
	{ require("nexisnv.gitgutter") },
	{ require("nexisnv.visualmulti") },
	{ require("nexisnv.surround") },
	{ require("nexisnv.octo") },
	{ require("nexisnv.vimtex") },
	{ require("nexisnv.align") },
	{ require("nexisnv.lazydocker") },
	{ require("nexisnv.avante") },
}
