-- Set leader keymap
vim.g.mapleader = " "

-- Set tabs to be 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Configure system clipboard
vim.opt.clipboard = "unnamedplus"
