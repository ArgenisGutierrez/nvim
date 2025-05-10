---Notificaciones graficas https://github.com/rcarriga/nvim-notify
return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		local notify = require("notify")
		notify.setup({ background_colour = "#000000", render = "minimal" })
		vim.notify = notify.notify
	end,
}
