local wk = require('which-key')

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
  expr = false,   -- use `expr` when creating keymaps
}
-- Telescope keymaps
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

--LSP keymaps
wk.register({
  l = {
    name = " LSP",
    s = { "<cmd>Lspsaga finder<cr>", "󰮗 Finder" },
    r = { "<cmd>Lspsaga rename<cr>", "󰑕 Rename" },
    e = { "<cmd>Lspsaga show_buf_diagnostics<cr>", "󰩂 Diagnostic" },
    q = { "<cmd>Trouble document_diagnostics<cr>", " Log List" },
    k = { "<cmd>Lspsaga hover_doc<cr>"," Definicion" },
    K = { vim.lsp.buf.signature_help, "Signatue Help" },
    c = { "<cmd>Lspsaga code_action<cr>", " Code Action" },
    f = {
      function()
        vim.lsp.buf.format { async = true }
      end, "󰉼 Format" },
  }
}, opts)

--Workspaces keymaps
wk.register({
  W = {
    name = " Workspaces",
    a = { vim.lsp.buf.add_workspace_folder, " Add Workspace" },
    r = { vim.lsp.buf.remove_workspace_folder, " Add Workspace" },
    l = { function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, " Add Workspace" },
  }
}, opts)

--Git keymaps
wk.register({
  g = {
    name = "󰊢 Git",
    g = { "<cmd>:LazyGit<cr>", " LazyGit" },
    d = { "<cmd>:DiffviewOpen<cr>", " Diff Open" },
    c = { "<cmd>:DiffviewClose<cr>", " Diff Close" },
    h = { "<cmd>:DiffviewFileHistory<cr>", " LazyGit" },
  }
}, opts)

--Rest Nvim
wk.register({
  r= {
    name = "󱂛 Rest",
    r = {"<cmd>lua require('rest-nvim').run(RestNvim)<cr>", " Run Rest"},
    p = {"<cmd>lua require('rest-nvim').run(RestNvimPreview)<cr>", " Run Preview"},
    l = {"<cmd>lua require('rest-nvim').run(RestNvimLast)<cr>", " Run Last Req"},
  }
})
--keymaps varios
wk.register({
  ["w"] = { "<cmd>w<cr>", "󱣪 Save File" },
  ["q"] = { "<cmd>q!<cr>", "󰩈 Exit" },
  ["c"] = { "<cmd>bd<cr>", " Close File" },
  ["M"] = { "<cmd>Mason<cr>", " Mason" },
  ["L"] = { "<cmd>Lazy<cr>", " Lazy" },
  ["h"] = { "<cmd>noh<cr>", "󰸱 No Highlights" },
  ["n"] = { "<cmd>Lspsaga outline<cr>", " Navbuddy" },
  ["e"] = { "<cmd>NvimTreeToggle<cr>", "󰙅 Files Explorer" },
  ["s"] = { "/", "󰱼 Search" },
  ["N"] = { "<cmd>Neogen<cr>", "󱪝  NeoGen" },
  ["C"] = { "<cmd>CccPick<cr>", " Color Picker" },
}, opts)
