-- Here you can define your keymaps. If you don't like the default keymaps,
-- you can change them here. For ease of use, you can use the `map` function.


local map = vim.keymap.set
local nmap = vim.api.nvim_set_keymap
require("core.functions")



map("n", "<leader>q", ":q<CR>", { desc = "Quit" })


-- Ideas --
map("n", "=a", "ggVG=", { desc = "Indent All" })


-- Neotree --
map("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })


-- Copilot --
vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', 'copilot-i_CTRL-]', { expr = true, noremap = true, silent = true })
map("n", "<leader>cp", ":ToggleCopilot<CR>", { noremap = true, silent = true })

vim.g.copilot_no_tab_map = true



-- NeoTest --
map("n", "<leader>tn", function() require("neotest").run.run() end)
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end)
map("n", "<leader>ta", function() require("neotest").run.run({ suite = true }) end)
map("n", "<leader>ts", function() require("neotest").summary.toggle() end)
map("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end)



-- LSP --
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })



-- Tab control --
map("n", "gs", ":BufferLinePick<CR>", { desc = "Choose Tab" })
map("n", "<leader>gt", ":BufferLineCycleNext<CR>", { noremap = true, desc = "Next Tab" })
map("n", "gT", ":BufferLineCyclePrev<CR>", { desc = "Prev Tab" })
map("n", "gq", ":bwipeout<CR>", { desc = "Close Tab" })



-- Projectmgr --
map("n", "<leader>p", ":ProjectMgr<CR>", { desc = "Open Project Manage Window" })



-- ToggleTerm --
map("n", "<leader>tt", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
map("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
map("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })



-- LazyGit --
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "Open LazyGit Window" })
map("n", "gC", ":LazyGit<CR>ac<CR>", { desc = "Commit Changes" })


-- Formatter --
map("n", "<leader>F", function() vim.lsp.buf.format({ async = true }) end, { desc = "Format File" })



-- Trouble --
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" })
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })



-- Git Blame --
map("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle Git Blame" })



-- Multi Cursor --
nmap('n', '<C-j>', '<C-Down>', { noremap = false })
nmap('n', '<C-k>', '<C-Up>', { noremap = false })



-- Octo --
map("n", "<leader>gH", ":Gh ", { desc = "Open Github" })
map("n", "<leader>ghP", ":Ghp ", { desc = "Open Pull Request" })
map("n", "<leader>ghI", ":Ghi ", { desc = "Open Issue" })

map("n", "<leader>ghic", ":Ghi close<CR>", { desc = "Close Issue" })
map("n", "<leader>ghir", ":Ghi reopen<CR>", { desc = "Reopen Issue" })
map("n", "<leader>ghiC", ":Ghi create<CR>", { desc = "Create Issue" })
map("n", "<leader>ghil", ":Ghi list<CR>", { desc = "List Issues" })
map("n", "<leader>ghiR", ":Ghi reload<CR>", { desc = "Reload Issue" })
map("n", "<leader>ghib", ":Ghi browser<CR>", { desc = "Open Issue in Browser" })
map("n", "<leader>ghiu", ":Ghi url<CR>", { desc = "Copies URL of the current Issue" })


map("n", "<leader>ghpc", ":Ghp close<CR>", { desc = "Close Pull Request" })
map("n", "<leader>ghpr", ":Ghp reopen<CR>", { desc = "Reopen Pull Request" })
map("n", "<leader>ghpC", ":Ghp create<CR>", { desc = "Create Pull Request" })
map("n", "<leader>ghpl", ":Ghp list<CR>", { desc = "List Pull Requests" })
map("n", "<leader>ghpR", ":Ghp reload<CR>", { desc = "Reload Pull Request" })
map("n", "<leader>ghpb", ":Ghp browser<CR>", { desc = "Open Pull Request in Browser" })
map("n", "<leader>ghpu", ":Ghp url<CR>", { desc = "Copies URL of the current Pull Request" })
map("n", "<leader>ghpm", ":Ghp merge<CR>", { desc = "Merge Pull Request" })
map("n", "<leader>ghpd", ":Ghp diff<CR>", { desc = "Diff Pull Request" })
map("n", "<leader>ghpD", ":Ghp changes<CR>", { desc = "All Changes Pull Request" })
map("n", "<leader>ghpb", ":Ghp checkout<CR>", { desc = "Checkout Pull Request" })
map("n", "<leader>ghpk", ":Ghp ready<CR>", { desc = "Ready (OK) Pull Request" })
map("n", "<leader>ghpK", ":Ghp checks<CR>", { desc = "Checks Pull Request" })


map("n", "<leader>ghrl", ":Gh repo list<CR>", { desc = "List Repo data" })
map("n", "<leader>ghrf", ":Gh repo fork<CR>", { desc = "Fork repo" })
map("n", "<leader>ghrv", ":Gh repo view ", { desc = "Open a Repo by path" })
map("n", "<leader>ghru", ":Gh repo url<CR>", { desc = "Copies URL of the current Repo" })

-- map("n", "<leader>ghca", ":Gh comment add<CR>", { desc = "Add a Comment" })
-- map("n", "<leader>ghcd", ":Gh comment delete<CR>", { desc = "Delete a Comment" })

-- map("n", "<leader>ghtr", ":Gh thread resolve<CR>", { desc = "Mark review as resolve" })
-- map("n", "<leader>ghtu", ":Gh thread unresolve<CR>", { desc = "Mark review as unresolve" })

map("n", "<leader>ghla", ":Gh label add ", { desc = "Add a Label" })
map("n", "<leader>ghld", ":Gh label delete ", { desc = "Delete a Label" })
map("n", "<leader>ghlc", ":Gh label create ", { desc = "Create a Label" })

map("n", "<leader>ghma", ":Gh milestone add ", { desc = "Add a Milestone" })
map("n", "<leader>ghmd", ":Gh milestone remove<CR>", { desc = "Delete a Milestone" })
map("n", "<leader>ghmc", ":Gh milestone create ", { desc = "Create a Milestone" })
map("n", "<leader>ghml", ":Gh milestone list<CR>", { desc = "List Milestones" })

-- map("n", "<leader>ghaa", ":Gh assignee add ", { desc = "Add Assignee" })
-- map("n", "<leader>ghad", ":Gh assignee remove ", { desc = "Delete Assignee" })

-- map("n", "<leader>ghra", ":Gh reviewer add ", { desc = "Add Reviewed" })
-- map("n", "<leader>ghrr", ":Gh reaction ", { desc = "Add a Reaction" })


-- Dadbod --
map("n", "<leader>dbt", ":DBUIToggle<CR>", { desc = "Toggle DBUI" })
map("n", "<leader>dbe", ":DBUIExecuteQuery<CR>", { desc = "Execute Query" })



-- Treesitter Text Objects --
local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)



-- Hardtime --
map("n", "<leader>htt", ":Hardtime toggle<CR>", { desc = "Toggle Hardtime" })
map("n", "<leader>hte", ":Hardtime enable<CR>", { desc = "Toggle Cursor" })
map("n", "<leader>htd", ":Hardtime disable<CR>", { desc = "Toggle Cursor Line" })



-- DAP --
vim.keymap.set("n", "<F5>", function() require("dap").continue() end)
vim.keymap.set("n", "<F10>", function() require("dap").step_over() end)
vim.keymap.set("n", "<F11>", function() require("dap").step_into() end)
vim.keymap.set("n", "<F12>", function() require("dap").step_out() end)



-- LazyDocker --
map("n", "<leader>ld", ":LazyDocker<CR>", { desc = "Open LazyDocker" })


-- Avante --
map("n", "<leader>ask", ":AvanteAsk<CR>", { desc = "Open AI Assistent" })
map("n", "<leader>ast", ":AvanteToggle<CR>", { desc = "Reset AI Assistent" })
