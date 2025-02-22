-- Here you can define the plugins you want to use.
-- You can use a string or a table to define the plugin.
-- For a better structure, you can use the require function
-- to load a file that returns a table with the plugins and
-- its configurations.


return {
	{ "github/copilot.vim" },
	{ require("plugins.obsidian") },
	-- { require("plugins.hardtime") },
}
