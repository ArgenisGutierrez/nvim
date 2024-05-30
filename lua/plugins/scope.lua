-- Manejo de Buffers https://github.com/tiagovla/scope.nvim
return {
  'tiagovla/scope.nvim',
  config = function()
    require("scope").setup({
    })
    -- Keymaps
    vim.keymap.set("n", "<S-l>", ":bnext<cr>")
    vim.keymap.set("n", "<S-h>", ":bprev<cr>")
  end
}
