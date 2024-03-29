require'nvim-treesitter.configs'.setup {
	ensure_installed = { 
		"lua", "go", "javascript", 
		"typescript", "tsx", "gomod", 
		"python", "yaml", "proto",
		"dockerfile", "markdown", "json",
		"make"
	},

	highlight = {
	-- `false` will disable the whole extension
	enable = true,

	-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
	-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
	-- the name of the parser)
	-- list of language that will be disabled
	disable = { "c", "rust" },

	-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	-- Using this option may slow down your editor, and you may see some duplicate highlights.
	-- Instead of true it can also be a list of languages
	additional_vim_regex_highlighting = false,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			-- gnn takes in you into visual mode
			init_selection = 'tsi',
			-- below mappings work once in visual mode
			node_incremental = 'tsu',
			scope_incremental = 'tss',
			node_decremental = 'tsd',
		},
	},
}

