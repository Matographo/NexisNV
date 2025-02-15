return {
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	init = function()
		vim.opt.timeout = true
		vim.opt.timeoutlen = 10000
	end,
	  opts = {
	  },
	  keys = {
	    {
	      "<leader>?",
	      function()
		require("which-key").show({ global = false })
	      end,
	      desc = "Buffer Local Keymaps (which-key)",
	    },
	  },
}
