return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,  -- Setze auf false, damit es immer geladen wird!
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Uni",
          path = vim.fn.expand("~/Documents/Obsidian Vaults/Uni"),  -- Dein Obsidian-Vault Pfad!
        },
	
      },
      completion = {
        nvim_cmp = true,
      },
    })
  end,
}

