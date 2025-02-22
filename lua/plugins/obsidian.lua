return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Uni",
          path = vim.fn.expand("~/Documents/Obsidian Vaults/Uni"),
        },
      },
      completion = {
        nvim_cmp = true,
      },
    })
  end,
}

