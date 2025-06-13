return {
  "mikavilpas/yazi.nvim",
  keys = {
    { "<leader>o", "<cmd>Yazi<CR>", desc = "󰺔 File Manager", mode = "n" },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    yazi_floating_window_border = "none", -- Quita los bordes
    keymaps = {
      show_help = "<f1>",
    },
  },
}
