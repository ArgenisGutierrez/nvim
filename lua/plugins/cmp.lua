--AutoCompletado
return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-cmdline',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'neovim/nvim-lspconfig',
    'rafamadriz/friendly-snippets',
    'windwp/nvim-autopairs'
  },
  event = "VeryLazy",
  main = "config.plugins.cmp", --manda la configuracion a otro archivo
  config = true,
}
