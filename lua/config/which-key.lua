local wk = require('which-key')

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
  expr = false,   -- use `expr` when creating keymaps
}

wk.register({
  f = {
    name = "Telescope",
    f = { "<cmd>Telescope find_files<cr>", "Find Files" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    g = { "<cmd>lua require('telescope.builtin').git_files({ show_untracked = true })<cr>", "Git Files" },
    s = { "<cmd>Telescope git_status<cr>", "Git Status" },
    c = { "<cmd>Telescope git_bcommits<cr>", "Git Commits in File" },
    G = { "<cmd>Telescope git_branches<cr>", "Git Branchs" },
    h = { "<cmd>Telescope help_tags<cr>", "Help" },
    e = { "<cmd>lua require('telescope').extensions.file_browser.file_browser({ path = '%:h:p', select_buffer = true })<cr>", "Help" },
  }
}, opts)

wk.register({
  ["w"] = { "<cmd>w<cr>", "Save File" },
  ["Q"] = { "<cmd>xa<cr>", "Exit" },
  ["c"] = { "<cmd>bd<cr>", "Close File" },
}, opts)
