local wk = require('which-key')
local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
  expr = false,   -- use `expr` when creating keymaps
}
--keymaps varios
wk.register({
  ["w"] = { "<cmd>w<cr>", "󱣪 Save File" },
  ["q"] = { "<cmd>wq!<cr>", "󰩈 Exit" },
  ["c"] = { "<cmd>bd<cr>", " Close File" },
  ["M"] = { "<cmd>Mason<cr>", " Mason" },
  ["L"] = { "<cmd>Lazy<cr>", " Lazy" },
}, opts)
