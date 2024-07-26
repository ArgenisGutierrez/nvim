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
      },
      ui = {
        code_action = ''
      }
    })

    -- Keymaps
    local wk = require('which-key')
    wk.add({
      { "<leader>l", group = " LSP" },
      { "<leader>ls", "<cmd>Lspsaga finder<cr>", desc = "󰮗 Finder", mode = "n" },
      { "<leader>lr", "<cmd>Lspsaga rename<cr>", desc = "󰑕 Rename", mode = "n" },
      { "<leader>le", "<cmd>Lspsaga show_buf_diagnostics<cr>", desc = "󰩂 Diagnostic", mode = "n" },
      { "<leader>lk", "<cmd>Lspsaga hover_doc<cr>", desc = " Definicion", mode = "n" },
      { "<leader>lc", "<cmd>Lspsaga code_action<cr>", desc = " Code Action", mode = "n" },
      { "<leader>ln", "<cmd>Lspsaga outline<cr>", desc = " Navbuddy", mode = "n" },
      {
        "<leader>lf",
        function()
          vim.lsp.buf.format { async = true }
        end,
        desc = "󰉼 Format",
        mode = "n"
      },
    })
  end,
}
