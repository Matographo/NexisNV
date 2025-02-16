local map = vim.keymap.set
local nmap = vim.api.nvim_set_keymap
require("core.functions")



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
map("n", "<leader>gt", ":BufferLineCycleNext<CR>", { noremap =true, desc = "Next Tab" })
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

