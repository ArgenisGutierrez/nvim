-- Barra inferior https://github.com/nvim-lualine/lualine.nvim
return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = {
					statusline = { "dashboard", "alpha", "starter" },
				},
				section_separators = "",
				component_separators = "",
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },

				lualine_c = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{
						"filename",
						path = 1, -- relative path
						symbols = {
							modified = " ●",
							readonly = " ",
							unnamed = "[No Name]",
						},
					},
				},

				lualine_x = {
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
					{
						function()
							local ok, dap = pcall(require, "dap")
							if ok and dap.status() ~= "" then
								return " " .. dap.status()
							end
							return ""
						end,
						cond = function()
							return package.loaded["dap"]
						end,
					},
				},

				lualine_y = {
					{ "progress" },
					{ "location" },
				},

				lualine_z = {
					function()
						return " " .. os.date("%H:%M")
					end,
				},
			},

			extensions = { "neo-tree", "fzf" },
		})
	end,
}
