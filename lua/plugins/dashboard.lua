--NOTE: Plugin para crear un dashboard
--https://github.com/goolord/alpha-nvim
return {
  'goolord/alpha-nvim',
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    require "alpha.term"
    dashboard.opts.opts.noautocmd = true
    dashboard.section.terminal.opts.redraw = true
    local path = "~/.config/nvim/dashboard/img.txt"
    dashboard.section.terminal.command = "cat " .. path
    dashboard.section.terminal.width = 100
    dashboard.section.terminal.height = 32
    dashboard.section.buttons.val = {
      dashboard.button("s","Sesiones", "<cmd>Telescope persisted<cr>"),
      dashboard.button("f", "Archivos Recientes", "<cmd>Telescope oldfiles<cr>"),
      dashboard.button("p", "Proyectos", "<cmd>Telescope projects"),
    }
    dashboard.opts.layout = {
      dashboard.section.terminal,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
    }
    return dashboard
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)
  end,
};
