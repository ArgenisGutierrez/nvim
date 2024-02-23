--NOTE: Pluging para mejorar el movimiento a lo largo del documento
--https://github.com/ggandor/leap.nvim?tab=readme-ov-file
return {
  'ggandor/leap.nvim',
  dependencies = {
    'tpope/vim-repeat',
  },
  config = function()
    require('leap').create_default_mappings()
    require('leap').opts.special_keys.prev_target = '<bs>'
    require('leap').opts.special_keys.prev_group = '<bs>'
    require('leap.user').set_repeat_keys('<cr>', '<bs>')
  end,
}
