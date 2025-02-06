local wk = require('which-key')
--keymaps varios
wk.add({
  { "<leader>w", "<cmd>w<cr>", desc = "󱣪 Save File" },
  { "<leader>q", "<cmd>q!<cr>", desc="󰩈 Exit" },
  { "<leader>c", "<cmd>bd<cr>", desc=" Close File" },
  { "<leader>M", "<cmd>Mason<cr>", desc=" Mason" },
  { "<leader>L", "<cmd>Lazy<cr>", desc=" Lazy" },
  { "<leader>h", "<cmd>noh<cr>", desc="󱎸 No Highlight" },
  { "<leader>s", "z=", desc="  Spelling" },
})
