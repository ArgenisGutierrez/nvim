-- Buscador de todo https://github.com/nvim-telescope/telescope.nvim
return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'nvim-tree/nvim-web-devicons',
    'nvim-treesitter/nvim-treesitter',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  },
  opts = {
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },
  },
  config = function (opts)
    require('telescope').setup(opts)
    require('telescope').load_extension('lazygit')
  end

}
