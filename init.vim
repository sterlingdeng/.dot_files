set nocompatible
filetype plugin indent on

" Plugins
call plug#begin('~/.vim/plugged')

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" rust
Plug 'rust-lang/rust.vim'
" toml
Plug 'cespare/vim-toml'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" notes
Plug 'vimwiki/vimwiki'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark' }

" Initialize plugin system
call plug#end()

set updatetime=100
set termguicolors
colorscheme embark
set background=dark
syntax on

" map ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" set escape key as j-k 
inoremap jk <esc>

" natural split direction
set splitbelow
set splitright

filetype plugin indent on
set nohlsearch
set incsearch
set hidden
set noerrorbells
set nowrap

set smarttab
set tabstop=2
set laststatus=2
set shiftwidth=2
set expandtab
set softtabstop=2
set cindent
set cursorline
set colorcolumn=120
set scrolloff=8


:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set clipboard=unnamedplus

" Coc Autocompletion
" https://www.youtube.com/watch?v=T32yqetyy8s
" go-vim configs
let g:go_def_mapping_enabled = 0 "delegate godef to lsp client
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


nmap <C-P> :Files<Enter>
nmap <C-[> :Buffers<Enter>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" go-vim syntax highlighting
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_variable_declarations = 1

" vim wiki
let g:vimwiki_list = [
      \ {'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"     \ {'path': '~/vimwiki/', 'syntax': 'default', 'ext': '.wiki'}
"     \ ]
let g:vimwiki_ext2syntax = {'.md': 'markdown',
                            \ '.wiki': 'media'}
let g:vimwiki_use_mouse = 1

" for i3wm + compton for transparency
"highlight Normal guibg=none
