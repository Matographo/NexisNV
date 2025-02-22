-- This file contains the global options for the editor
-- The options are set using the vim.opt object and you can 
-- define the options as key-value pairs
-- feel free to add more options as you see fit


local op = vim.opt

op.number = true
op.relativenumber = true
op.clipboard = "unnamedplus"

op.timeout = true
op.timeoutlen = 10000
vim.o.signcolumn = "yes"



op.conceallevel = 2
op.concealcursor = "nc"
