-- Auto Save files https://github.com/okuuva/auto-save.nvim
return {
  "okuuva/auto-save.nvim",
  version = "*",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    trigger_events = {                                                    -- See :h events
      immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" }, -- vim events that trigger an immediate save
      defer_save = { "InsertLeave", "TextChanged" },                      -- vim events that trigger a deferred save (saves after `debounce_delay`)
      cancel_deferred_save = { "InsertEnter" },
    },
    condition = nil,
    write_all_buffers = false,
    noautocmd = false,
    lockmarks = false,
    debounce_delay = 3500,
    debug = false,
  },
}
