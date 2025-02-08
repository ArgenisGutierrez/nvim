-- Buscador de todo https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep",
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
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
    require("telescope").setup(opts)
    require("telescope").load_extension("projects")

    local wk = require("which-key")
    -- Keymaps
    wk.add({
      { "<leader>f", group = "󰭎 Telescope" },
      {
        "<leader>ff",
        function()
          local root_dir =
              require("lspconfig").util.root_pattern(".git", "package.json", "Makefile", "Cargo.toml")
          require("telescope.builtin").find_files({ cwd = root_dir(vim.fn.getcwd()) }) -- Buscar archivos solo en el proyecto
        end,
        desc = " Find Files",
        mode = "n",
      },
      { "<leader>fs", "<cmd>Telescope git_status<cr>", desc = "󱖫 Git Status", mode = "n" },
      { "<leader>fc", "<cmd>Telescope git_bcommits<cr>", desc = " Git Commits in File", mode = "n" },
      { "<leader>fg", "<cmd>Telescope git_branches<cr>", desc = " Git Branchs", mode = "n" },
      { "<leader>ft", "<cmd>Telescope projects<cr>", desc = " Projects", mode = "n" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "󰮥 Help", mode = "n" },
      { "<leader>fr", "<cmd>Telescope registers<cr>", desc = "󱛣 Registers", mode = "n" },
      {
        "<leader>fp",
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
            end,
          })
        end,
        desc = "󰏖 Plugins",
        mode = "n",
      },
    })
    vim.cmd("highlight TelescopeBorder guibg=none")
    vim.cmd("highlight TelescopeTitle guibg=none")
  end,
}
