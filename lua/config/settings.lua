-- Opciones
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- Keymaps
local keymap = vim.keymap
  -- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

  -- Split window
keymap.set("n", "-", ":split<Return>", opts)
keymap.set("n", "|", ":vsplit<Return>", opts)

