-- OR setup with some options
require("nvim-tree").setup({
	update_cwd = true,
	renderer = {
		highlight_modified = "none",
		icons = {
			glyphs = {
				modified = "+",	
			}
		},
	},
	filters = {
		enable = true,
		git_ignored = false,

	},
	experimental = {
		actions = {
			open_file = {
				relative_path = true,
			}
		}
	},
	modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
    },	
})
