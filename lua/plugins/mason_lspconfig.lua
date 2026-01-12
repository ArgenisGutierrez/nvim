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
      automatic_installation = true,
      handlers = {
        -- Handler por defecto para configurar todos los servidores LSP
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        -- Handler específico para phpactor
        ["phpactor"] = function()
          require("lspconfig").phpactor.setup({
            init_options = {
              ["language_server_phpstan.enabled"] = false,
              ["language_server_psalm.enabled"] = false,
            },
          })
        end,
      },
    })
  end,
}
