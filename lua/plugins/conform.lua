return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				php = { "php_cs_fixer" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 1000,
			},
		})

		-- Keymap manual (actualiza el que tienes en lsp_saga.lua)
		vim.keymap.set({ "n", "v" }, "<leader>lf", function()
			conform.format({
				lsp_fallback = true,
				timeout_ms = 1000,
			})
		end, { desc = "Format" })
	end,
}
