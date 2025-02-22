-- This is the Bootstrap file for the lazy.nvim plugin.
-- It will install lazy.nvim if it is not already installed.
-- For the best experience, it is recommended to not modify this file.
-- If you want to add your own plugins, you can do so in the Plugins folder.


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", lazypath
	})
end
vim.opt.rtp:prepend(lazypath)
