--NOTE: Plugin para resaltar colores y crear un picker
--https://github.com/uga-rosa/ccc.nvim
return {
  'uga-rosa/ccc.nvim',
  config = function()
    require('ccc').setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })
  end
}
