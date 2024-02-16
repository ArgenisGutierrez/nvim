--LSP lenguage server protocol
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    --- Funcion que indica que los keymaps solo estan disponibles cuando el buffer esta vinculado a un lsp
    ---@param _ "client" no se usa asi que se deja como "nill"
    ---@param bufnr buffer al que esta vilculado el lsp
    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }

      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end

    require('neodev').setup({})
    --Aqui se van agregando las configuraciones de cada lsp que agregamos
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
    })
    require("lspconfig").tsserver.setup({
      on_attach = on_attach,
    })
  end
}
