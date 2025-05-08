--LSP Config https://github.com/neovim/nvim-lspconfig
return {
  "neovim/nvim-lspconfig",
  dependencies = {},
  Config = function() end,
  require("lspconfig").phpactor.setup({
    on_attach = on_attach,
    init_options = {
      ["language_server_phpstan.enabled"] = false,
      ["language_server_psalm.enabled"] = false,
    },
  }),
}
