return {
	"otavioschwanck/arrow.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	keys = { { ";", mode = "n" } },
	opts = {
		show_icons = true,
		leader_key = ";", -- Recommended to be a single key
		always_show_path = false,
		separate_by_branch = false, -- Bookmarks will be separated by git branch
		buffer_leader_key = "m", -- Per Buffer Mappings
		global_bookmarks = true, -- if true, arrow will save files globally (ignores separate_by_branch)
	},
}
