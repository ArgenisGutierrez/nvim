-- Mejor notificaciones, mensajes y vista de comandos https://github.com/folke/noice.nvim?tab=readme-ov-file
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"folke/snacks.nvim",
	},
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
		},

		-- SOLUCIÓN: Deshabilita Noice para Mason
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
			opts = {},
		},

		-- Agrega estas routes para ignorar Mason completamente
		routes = {
			{
				filter = {
					event = "msg_show",
					find = "mason",
				},
				opts = { skip = true },
			},
			{
				view = "notify",
				filter = { event = "msg_showmode" },
			},
		},
	},

	-- IMPORTANTE: Deshabilita Noice cuando entras a Mason
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "mason",
			callback = function()
				require("noice").disable()
			end,
		})

		vim.api.nvim_create_autocmd("BufLeave", {
			callback = function(event)
				if vim.bo[event.buf].filetype == "mason" then
					require("noice").enable()
				end
			end,
		})
	end,
}
