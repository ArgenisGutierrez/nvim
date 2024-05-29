--LSP Config https://github.com/neovim/nvim-lspconfig
return {
  "neovim/nvim-lspconfig",
  dependencies = {
  },
  config = function()
    -- Definimos que los keymaps solo sirven en buffers vinculados a un lsp
    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }
      -- Keymaps
    end

    -- LSP
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
    })
  end
}
