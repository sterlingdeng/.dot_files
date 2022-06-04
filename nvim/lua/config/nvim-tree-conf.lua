require'nvim-tree'.setup {
	open_on_setup_file = false,
	create_in_closed_folder = true,
	respect_buf_cwd = true,
	view = {
		side = "right",
		number = true,
		relativenumber = true,
		width = 45,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint =  "",
			info = "",
			warning = "",
			error = "",
		},
	},
	
	renderer = {
		group_empty = true,
		highlight_opened_files = "none",
		highlight_git = true,
		root_folder_modifier = ':~',
		add_trailing = true,
		icons = {
			symlink_arrow = ' >> ', -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
			glyphs = {
				default = "",
				symlink = "",
				git= {
				 unstaged = "✗",
				 staged = "✓",
				 unmerged = "",
				 renamed = "➜",
				 untracked = "★",
				 deleted = "",
				 ignored = "◌"
				},
				folder = {
				 arrow_open = "",
				 arrow_closed = "",
				 default = "",
				 open = "",
				 empty = "",
				 empty_open = "",
				 symlink = "",
				 symlink_open = "",
				 },
			},
			show = {
				git = true,
				file = true,
				folder = true,
				folder_arrow = true,
			},
		},
		indent_markers = {
			enable = false,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
		special_files = { 'README.md', 'Makefile', 'MAKEFILE', 'go.mod' }
	},
}
