-- Contexto sobre los bloques de codigo https://github.com/code-biscuits/nvim-biscuits
return {
  'code-biscuits/nvim-biscuits',
  config = function()
    require('nvim-biscuits').setup({
    })
    vim.cmd([[highlight BiscuitColor guifg=#ffffff]])
  end
}
