-- Autoconfiguracion de LSP con Mason https://github.com/williamboman/mason-lspconfig.nvim
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {},
      automatic_enable = true,
      handlers = {},
    })
  end,
}
