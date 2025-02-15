vim.g.mapleader = " "

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
