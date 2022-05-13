set nocompatible
filetype plugin indent on

lua require('plugins')
lua require('config/nvim-tree-conf')
lua require('settings')
lua require('mappings')
lua require('config/lsp-config-conf')
lua require('config/nvim-cmp-conf')
lua require('config/tree-sitter-conf')
lua require('config/bufferline-conf')
lua require('config/lualine-conf')

" Plugins
call plug#begin('~/.vim/plugged')

" toml
"Plug 'cespare/vim-toml'
" rust
" Plug 'rust-lang/rust.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" notes
Plug 'vimwiki/vimwiki'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" theme
Plug 'vim-airline/vim-airline-themes'
Plug 'embark-theme/vim', { 'as': 'embark' }

" Initialize plugin system
call plug#end()

" go-vim syntax highlighting

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]



nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
