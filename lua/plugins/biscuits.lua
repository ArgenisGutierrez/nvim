-- Contexto sobre los bloques de codigo https://github.com/code-biscuits/nvim-biscuits
return {
  'code-biscuits/nvim-biscuits',
  enabled = true,
  config = function()
    require('nvim-biscuits').setup({
      default_config = {
        max_length = 60,
        min_distance = 5,
        prefix_string = " 📎 "
      },
      language_config = {
        html = {
          prefix_string = " 🌐 "
        },
        javascript = {
          prefix_string = " ✨ ",
          max_length = 80
        },
      }
    })
    vim.cmd([[highlight BiscuitColor guifg=#b3b3b3]])
  end
}
