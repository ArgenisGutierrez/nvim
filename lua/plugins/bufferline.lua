return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        mode = "tabs",
        style_preset = bufferline.style_preset.no_italic,
        themable = true,
        numbers = "none",
        close_command = 'bdelete! %d',
        indicator = {
          icon = '▎',
          style = 'underline',
        },
        buffer_close_icon = 'x',
        tab_size = 18,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        color_icons = true,
        separator_style = "slant",
        always_show_bufferline = true,
        enforce_regular_tabs = false
      },
    })
  end
}
