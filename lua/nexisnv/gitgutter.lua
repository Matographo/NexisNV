return {
	"airblade/vim-gitgutter",
	lazy = false,
	config = function()
		vim.g.gitgutter_enabled = 1
		vim.g.gitgutter_sign_added = '✚'
		vim.g.gitgutter_sign_modified = '✹'
		vim.g.gitgutter_sign_removed = '✖'
	end
}
