-- This file is used to store all the configurations for the plugins
-- You can easily change values, so there is a fast effect on the plugins
-- For example, you can change the position of the neotree to the left side
-- by changing the value of the site to "left", or changing the message of the
-- dashboard to "Hello World!" by changing the value of the message to "Hello World!"
--
-- There are not many easy configurations, but you can add more by adding
-- more tables and values and use them in the plugins. It shoud be easy to
-- use and understand.
--
-- If you have good ideas for easy configurations, please let me know.
--

vim.g.mapleader = " "
vim.g.maplocalleader = ","

local M = {}
setmetatable(M, {
	__index = function(_, key)
		return nil
	end,
})


-- init for tables --
M.neotree = {}
M.dashboad = {}

-- neotree --
M.neotree.site = "right"


-- Dashboad --
M.dashboad.message = { "Progress over Perfection!" }





_G.easy = M
