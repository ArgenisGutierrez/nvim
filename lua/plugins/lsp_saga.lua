--Mejora funciones de lsp y agrega otras mas como el winbar y el navbar https://nvimdev.github.io/lspsaga/
return {
  'nvimdev/lspsaga.nvim',
  -- commit = 'bb399b24c70ff1a6e57a7057f66225daf8de3811',
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
        k = { "<cmd>Lspsaga hover_doc<cr>", " Definicion" },
        c = { "<cmd>Lspsaga code_action<cr>", " Code Action" },
        n = { "<cmd>Lspsaga outline<cr>", " Navbuddy" },
        f = {
          function()
            vim.lsp.buf.format { async = true }
          end, "󰉼 Format" },
      }
    }, opts)
  end,
}
