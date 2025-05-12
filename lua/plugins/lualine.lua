-- Barra inferior https://github.com/nvim-lualine/lualine.nvim
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",                                      -- Load this plugin on the 'VeryLazy' event
  requires = { "nvim-tree/nvim-web-devicons", opt = true }, -- Optional dependency for icons
  opts = {
    options = {
      theme = "kanagawa", -- Set the theme for lualine
      icons_enabled = true, -- Enable icons in the statusline
    },
    sections = {
      lualine_a = {
        {
          "mode", -- Display the current mode
          icon = "", -- Set the icon for the mode
        },
      },
      lualine_z = { require("http-nvim").http_env_lualine_component },
    },
  },
}
