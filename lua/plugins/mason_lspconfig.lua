-- Autoconfiguracion de LSP con Mason https://github.com/williamboman/mason-lspconfig.nvim
return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        'ts_ls',
        'lua_ls',
        'html',
        'tailwindcss',
        'emmet_language_server'
      },
    })

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require("mason-lspconfig").setup_handlers {
      -- Funcion para configurar automaticamente los lsp con mason
      function(server_name)
        require("lspconfig")[server_name].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end,
    }
  end
}
