-- Modo zen
-- https://github.com/folke/zen-mode.nvim
return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode", -- Command to toggle Zen Mode
  opts = {
    plugins = {
      gitsigns = true,                       -- Enable gitsigns integration
      tmux = true,                           -- Enable tmux integration
      kitty = { enabled = false, font = "+2" }, -- Disable kitty integration and set font size
      twilight = { enabled = true },         -- Enable twilight integration
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } }, -- Keybinding to toggle Zen Mode
}
