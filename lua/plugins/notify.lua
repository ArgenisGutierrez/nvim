---@diagnostic disable: missing-fields
---NOTE Plugin para notificaciones graficas
---https://github.com/rcarriga/nvim-notify
return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    local notify = require "notify"
    -- this for transparency
    notify.setup { background_colour = "#000000" }
    -- this overwrites the vim notify function
    vim.notify = notify.notify
  end,
}
