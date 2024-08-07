-- Plugin para generar comentarios o documentacion https://github.com/danymat/neogen
return {
  'danymat/neogen',
  config = function()
    require('neogen').setup({ snippet_engine = 'luasnip' })
    wk = require('which-key')
    wk.add({
      { "<leader>n", "<cmd>Neogen<cr>", desc = " Neogen", mode = "n" }
    })
  end
}
