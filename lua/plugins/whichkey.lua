-- Panel con keymaps https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  dependencies = {
    'echasnovski/mini.nvim'
  },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    plugins = {
      marks = false,
      registers = false,
      spelling = {
        enable = true
      }
    },
    preset = 'modern',
    win = {
      no_overlap = false,
      title = false,
    },
    icons = {
      mappings = false,
    },
    layout = {
      width = { min = 30 },
      spacing = 5
    },
    show_help = false,
    show_keys = false
  }
}
