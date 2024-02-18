--NOTE: Plugin que mejora funciones de lsp y agrega otras mas como el winbar y el navbar
--https://nvimdev.github.io/lspsaga/
return {
  'nvimdev/lspsaga.nvim',
  commit = 'bb399b24c70ff1a6e57a7057f66225daf8de3811',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  },
  event = 'LspAttach',
  config = function()
    require('lspsaga').setup({
      symbols_in_winbar = {
        enable = true,
      },
      outline = {
        layout = 'float',
      }
    })
  end,
}
