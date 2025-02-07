return {
	"mikavilpas/yazi.nvim",
	keys = {
		{ "<leader>o", "<cmd>Yazi<CR>", desc = "󰺔 File Manager", mode = "n" },
	},
	opts = {
		-- if you want to open yazi instead of netrw, see below for more info
		open_for_directories = false,
		keymaps = {
			show_help = "<f1>",
		},
	},
}
