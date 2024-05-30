--LSP Config https://github.com/neovim/nvim-lspconfig
return {
  "neovim/nvim-lspconfig",
  dependencies = {
  },
  config = function()
    -- Keymaps
    local wk = require('which-key')
    local opts = {
      mode = "n",
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = false,
      expr = false,
    }
    wk.register({
      l = {
        name = " LSP",
        s = { "<cmd>Lspsaga finder<cr>", "󰮗 Finder" },
        r = { "<cmd>Lspsaga rename<cr>", "󰑕 Rename" },
        e = { "<cmd>Lspsaga show_buf_diagnostics<cr>", "󰩂 Diagnostic" },
        -- q = { "<cmd>Trouble document_diagnostics<cr>", " Log List" },
        k = { "<cmd>Lspsaga hover_doc<cr>", " Definicion" },
        -- K = { vim.lsp.buf.signature_help, "Signatue Help" },
        c = { "<cmd>Lspsaga code_action<cr>", " Code Action" },
        f = {
          function()
            vim.lsp.buf.format { async = true }
          end, "󰉼 Format" },
      }
    }, opts)
  end
}
