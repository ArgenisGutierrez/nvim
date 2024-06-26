-- Autoclose y rename html tags https://github.com/windwp/nvim-ts-autotag
return {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,      -- Auto close tags
        enable_rename = true,     -- Auto rename pairs of tags
        enable_close_on_slash = false -- Auto close on trailing </
      },
      filetype = {
        'html',
        'tsx',
        'jsx',
      }
    })
  end,
}
