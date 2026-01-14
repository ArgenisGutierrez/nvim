--Mejora funciones de lsp y agrega otras mas como el winbar y el navbar https://nvimdev.github.io/lspsaga/
return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	event = "LspAttach",
	config = function()
		require("lspsaga").setup({
			symbols_in_winbar = {
				enable = true,
			},
			outline = {
				layout = "float",
			},
			ui = {
				code_action = "",
			},
		})

		-- Keymaps
		local wk = require("which-key")
		wk.add({
			{ "<leader>l", group = " LSP" },
			{ "<leader>ls", "<cmd>Lspsaga finder<cr>", desc = "󰮗 Finder", mode = "n" },
			{ "<leader>lr", "<cmd>Lspsaga rename<cr>", desc = "󰑕 Rename", mode = "n" },
			{ "<leader>le", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "󰩂 Diagnostic", mode = "n" },
			{ "<leader>lk", "<cmd>Lspsaga hover_doc<cr>", desc = " Definicion", mode = "n" },
			{ "<leader>lg", "<cmd>Lspsaga goto_definition<cr>", desc = " Go to Defition", mode = "n" },
			{ "<leader>ln", "<cmd>Lspsaga outline<cr>", desc = " Navbuddy", mode = "n" },
		})
		vim.cmd("highlight HoverBorder guibg=none")
		vim.cmd("highlight HoverNormal guibg=none")
	end,
}
