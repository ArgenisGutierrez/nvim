--colorscheme kanagawa
-- https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file#color-palette
return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000, -- High priority to ensure it loads early
  config = function()
    -- Default options:
    require("kanagawa").setup({
      compile = enable, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      transparent = true,       -- do not set background color
      dimInactive = true,       -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,    -- define vim.g.terminal_color_{0,17}
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
    })

    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
