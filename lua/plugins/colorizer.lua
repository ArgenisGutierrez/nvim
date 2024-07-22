-- Resaltado de colores y picker https://github.com/uga-rosa/ccc.nvim
return {
  'uga-rosa/ccc.nvim',
  enabled = true,
  config = function()
    require('ccc').setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })

    -- Keymaps
    local wk = require('which-key')
    wk.add({
      { "<leader>C", "<cmd>CccPick<cr>", desc = " Color Picker" }
    })
  end
}
