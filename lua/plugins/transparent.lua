-- Transparent windows 
-- --https://github.com/xiyaowong/transparent.nvim`
return {
  'xiyaowong/transparent.nvim',
  config = function()
    vim.cmd([[TransparentEnable]])
  end
}
