-- Resaltado de colores y picker https://github.com/uga-rosa/ccc.nvim
return {
  'uga-rosa/ccc.nvim',
  config = function()
    require('ccc').setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })

    -- Keymaps
    local wk = require('which-key')
    local opts = {
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
      buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true, -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = false, -- use `nowait` when creating keymaps
      expr = false, -- use `expr` when creating keymaps
    }

    wk.register({
      ["C"] = { "<cmd>CccPick<cr>", " Color Picker" }
    },opts)
  end
}
