local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

-- Split window
keymap.set("n", "-", ":split<Return>", opts)
keymap.set("n", "|", ":vsplit<Return>", opts)

-- Buffer
keymap.set("n", "<S-l>", ":bnext<cr>")
keymap.set("n", "<S-h>", ":bprev<cr>")

--Terminal
keymap.set({"n","t"}, "<A-1>", "<ESC><cmd>1ToggleTerm direction=vertical name=vertical<cr>")
keymap.set({"n","t"}, "<A-2>", "<ESC><cmd>2ToggleTerm direction=horizontal name=horizontal<cr>")
keymap.set({"n","t"}, "<A-3>", "<ESC><cmd>3ToggleTerm direction=float name=float<cr>")
keymap.set("t", "<ESC>", [[<C-\><C-n>]], opts)
keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
