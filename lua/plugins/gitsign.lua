return {
	"lewis6991/gitsigns.nvim",
	config = true,
	opts = {
		signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
		numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
		linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
		word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
		signs      = {
			add = { text = '▎' },
			change = { text = '▎' },
			delete = { text = '➤' },
			topdelete = { text = '➤' },
			changedelete = { text = '▎' },
		},
	}
}
