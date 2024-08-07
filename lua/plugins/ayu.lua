-- Colorscheme https://github.com/Shatur/neovim-ayu
return {
  'Shatur/neovim-ayu',
  name = "ayu",
  lazy = false,
  priority = 1000,
  config = function()
    require('ayu').setup({
      mirage = false,
      terminal = true,
      overrides = {
        LineNr = { fg = '#3fa6ff' },
        Comment = { fg = '#55bcc8' },
        Normal = { fg = '#ecefef' },
      }
    })
    vim.cmd([[colorscheme ayu-dark]])
  end
}
