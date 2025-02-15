local map = vim.keymap.set



-- Neotree --
map("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })


-- Copilot --
vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', 'copilot-i_CTRL-]', { expr = true, noremap = true, silent = true })
function ToggleCopilot()
	if vim.g.copilot_enabled == nil or vim.g.copilot_enabled then
		vim.g.copilot_enabled = false
	else
		vim.g.copilot_enabled = true
	end
end
vim.api.nvim_create_user_command('ToggleCopilot', 'lua ToggleCopilot()', { nargs = 0 })
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
map("n", "<leader>gs", ":BufferLinePick<CR>", { desc = "Choose Tab" })
map("n", "<leader>gt", ":BufferLineCycleNext<CR>", { desc = "Next Tab" })
map("n", "<leader>gT", ":BufferLineCyclePrev<CR>", { desc = "Prev Tab" })
map("n", "<leader>gq", ":bwipeout<CR>", { desc = "Close Tab" })



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
