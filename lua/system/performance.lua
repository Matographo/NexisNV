-- This file is for performance optimization. If you have 
-- some ideas to improve the performance of Neovim, you can
-- add them and maybe create a pull request :)


vim.opt.lazyredraw = true
vim.opt.updatetime = 250

if vim.loader then
	vim.loader.enable()
end
