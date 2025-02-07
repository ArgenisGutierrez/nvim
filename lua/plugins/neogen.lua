-- Plugin para generar comentarios o documentacion https://github.com/danymat/neogen
return {
  "danymat/neogen",
  keys = {
    { "<leader>n", "<cmd>Neogen<cr>", desc = " Neogen", mode = "n" },
  },
  config = function()
    require("neogen").setup({ snippet_engine = "luasnip" })
  end,
}
