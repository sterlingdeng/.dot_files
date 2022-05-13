vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'

  use 'fatih/vim-go'
  use 'neovim/nvim-lspconfig'

  -- use 'cespare/vim-toml'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'sainnhe/everforest'
  use 'morhetz/gruvbox'
  
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 
		'romgrk/nvim-treesitter-context',
		config = function()
			require'treesitter-context'.setup()
		end
	}

  use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
  }

	use {
		'akinsho/bufferline.nvim', 
		tag = "v2.*", 
		requires = 'kyazdani42/nvim-web-devicons',
	}


	-- git
	use { 
		'lewis6991/gitsigns.nvim',
		config = function() 
			require('gitsigns').setup()
		end
	}
	use 'tpope/vim-fugitive'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

end )


