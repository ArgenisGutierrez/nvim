--Mason descarga de lsp,dap,linter,formaters
return {
  'williamboman/mason.nvim',
  config = true,
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      },
    },
  },
}
