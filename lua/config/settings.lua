-- Opciones
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.clipboard = unnamed
-- Remapear 'y' para usar el portapapeles del sistema
vim.api.nvim_set_keymap("n", "y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "y", '"+y', { noremap = true, silent = true })

--identacion
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2

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
