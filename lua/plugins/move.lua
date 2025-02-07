return {
	"hinell/move.nvim",
	keys = {
		{ "<A-Down>", "<cmd>:MoveLine 1<CR>", mode = "n" },
		{ "<A-Up>", "<cmd>:MoveLine -1<CR>", mode = "n" },
		{ "<A-Right>", "<cmd>:MoveWord 1<CR>", mode = "n" },
		{ "<A--Left>", "<cmd>:MoveWord -1<CR>", mode = "n" },
	},
	config = function() end,
}
