--NOTE: Plugin para generar documentacion en codigo
--https://github.com/danymat/neogen
return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("i", "<C-l>", ":lua require('neogen').jump_next<CR>", opts)
    vim.api.nvim_set_keymap("i", "<C-h>", ":lua require('neogen').jump_prev<CR>", opts)
    require('neogen').setup({
      snippet_engine = "luasnip",
      enabled = true,
      input_after_comment = true,
    })
  end,
}
