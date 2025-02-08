--colorscheme kanagawa
-- https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file#color-palette
return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,    -- High priority to ensure it loads early
  opts = {
    transparent = true, -- Enable transparent background
    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = "none" }, -- Transparent background for floating windows
        FloatBorder = { bg = "none" }, -- Transparent background for floating window borders
        FloatTitle = { bg = "none" }, -- Transparent background for floating window titles

        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Lazy plugin
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Mason plugin

        TelescopeTitle = { fg = theme.ui.special, bold = true },
        TelescopePromptNormal = { bg = theme.ui.bg_p1 },
        TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
        TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
        TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
        TelescopePreviewNormal = { bg = theme.ui.bg_dim },
        TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
      }
    end,
  },
  config = function()
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
