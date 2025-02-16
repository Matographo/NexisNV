local op = vim.opt

op.number = true
op.relativenumber = true
op.clipboard = "unnamedplus"

op.timeout = true
op.timeoutlen = 10000
vim.o.signcolumn = "yes"



op.conceallevel = 2
op.concealcursor = "nc"  -- Versteckt Symbole nur im Normalmodus & in der Command-Line
