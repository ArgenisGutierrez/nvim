--NOTE: Plugin para cambiar o agregar facilmente llaves o comillas a palabras
--https://github.com/kylechui/nvim-surround
return {
  'kylechui/nvim-surround',
  version = "*",   -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
    })
  end
}
