return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  config = function ()
    -- Keymaps
    local wk = require('which-key')
    wk.add({
      { "<leader>o", "<cmd>Yazi<CR>", desc = "󰺔 File Manager", mode = "n" },
    })
  end,
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    }
  }
}
