-- Resaltado de colores y picker https://github.com/uga-rosa/ccc.nvim
return {
	"uga-rosa/ccc.nvim",
	enabled = true,
	keys = {
		{ "<leader>C", "<cmd>CccPick<cr>", desc = " Color Picker" },
	},
	config = function()
		require("ccc").setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})
	end,
}
