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
  config = function(opts)
    require('telescope').setup(opts)
    require('telescope').load_extension('lazygit')
    require('telescope').load_extension('projects')

    local wk = require('which-key')

    -- Keymaps
    local opts = {
      mode = "n",
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = false,
      expr = false,
    }
    wk.register({
      f = {
        name = "󰭎 Telescope",
        f = { "<cmd>lua require'telescope.builtin'.find_files({ hidden = true })<cr>", " Find Files" },
        s = { "<cmd>Telescope git_status<cr>", "󱖫 Git Status" },
        c = { "<cmd>Telescope git_bcommits<cr>", " Git Commits in File" },
        G = { "<cmd>Telescope git_branches<cr>", " Git Branchs" },
        t = { "<cmd>Telescope projects<cr>", " Projects" },
        h = { "<cmd>Telescope help_tags<cr>", "󰮥 Help" },
        p = {
          function()
            require("telescope.builtin").find_files({
              prompt_title = "Plugins",
              cwd = "~/.config/nvim/lua/plugins",
              attach_mappings = function(_, map)
                local actions = require("telescope.actions")
                local action_state = require("telescope.actions.state")
                map("i", "<c-y>", function(prompt_bufnr)
                  local new_plugin = action_state.get_current_line()
                  actions.close(prompt_bufnr)
                  vim.cmd(string.format("edit ~/.config/nvim/lua/plugins/%s.lua", new_plugin))
                end)
                return true
              end
            })
          end, "󰏖 Plugins"
        }
      }
    }, opts)
  end

}
