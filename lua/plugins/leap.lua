-- Saltar a partes especificas facilmente https://github.com/ggandor/leap.nvim
return {
  'ggandor/leap.nvim',
  config = function()
    require('leap').add_default_mappings()
  end,
}
