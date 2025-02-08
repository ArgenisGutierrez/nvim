-- Senales de git en el line number https://github.com/lewis6991/gitsigns.nvim
return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	config = function()
		require("gitsigns").setup({
			signcolumn = true,
			numhl = false,
			linehl = false,
			word_diff = false,
			signs = {
				add = { text = "" },
				change = { text = "" },
				delete = { text = "" },
				topdelete = { text = "󰠙" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
			signs_staged = {
				add = { text = "" },
				change = { text = "" },
				delete = { text = "" },
				topdelete = { text = "󰠙" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
		})
		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" })
	end,
}
