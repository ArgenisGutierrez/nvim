-- Realizar multiples busquedas y reemplazos https://github.com/AckslD/muren.nvim
return {
  'AckslD/muren.nvim',
  config = function()
    require('muren').setup({
      create_commands = true,
      filetype_in_preview = true,
      -- default togglable options
      two_step = false,
      all_on_line = true,
      preview = true,
      cwd = false,
      files = '**/*',
      -- keymaps
      keys = {
        close = 'q',
        toggle_side = '<Tab>',
        toggle_options_focus = '<C-s>',
        toggle_option_under_cursor = '<CR>',
        scroll_preview_up = '<Up>',
        scroll_preview_down = '<Down>',
        do_replace = '<CR>',
        -- NOTE these are not guaranteed to work, what they do is just apply `:normal! u` vs :normal! <C-r>`
        -- on the last affected buffers so if you do some edit in these buffers in the meantime it won't do the correct thing
        do_undo = '<localleader>u',
        do_redo = '<localleader>r',
      },
      -- ui sizes
      patterns_width = 30,
      patterns_height = 10,
      options_width = 20,
      preview_height = 12,
      -- window positions
      anchor = 'center', -- Set to one of:
      -- 'center' | 'top' | 'bottom' | 'left' | 'right' | 'top_left' | 'top_right' | 'bottom_left' | 'bottom_right'
      vertical_offset = 0, -- offsets are relative to anchors
      horizontal_offset = 0,
      -- options order in ui
      order = {
        'buffer',
        'dir',
        'files',
        'two_step',
        'all_on_line',
        'preview',
      },
      -- highlights used for options ui
      hl = {
        options = {
          on = '@string',
          off = '@variable.builtin',
        },
        preview = {
          cwd = {
            path = 'Comment',
            lnum = 'Number',
          },
        },
      },
    })

    local wk = require('which-key')
    local opts = {
      mode = "n",     -- NORMAL mode
      prefix = "<leader>",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = false, -- use `nowait` when creating keymaps
      expr = false,   -- use `expr` when creating keymaps
    }
    --keymaps varios
    wk.register({
      m = {
        name = "󰛔 Muren",
        o = {"<cmd>MurenOpen<cr>"," Open Muren"},
        c = {"<cmd>MurenClose<cr>"," Close Muren"},
        t = {"<cmd>MurenToggle<cr>"," Toggle Muren"},
      }
    }, opts)
  end,
}
