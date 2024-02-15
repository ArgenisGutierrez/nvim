return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig'
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {},
      automatic_installation = false,
      handlers = nil,
    })
  end
}