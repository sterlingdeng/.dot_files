set nocompatible
filetype plugin on

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'

" theme
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

set termguicolors

colorscheme gruvbox
set background=dark
syntax on

set cursorline 

" map ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" set escape key as j-k 
inoremap jk <esc>

" natural split direction
set splitbelow
set splitright

filetype plugin indent on
set smarttab
set tabstop=2
set laststatus=2
set shiftwidth=2
set expandtab
set softtabstop=2
set cindent


:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set clipboard=unnamedplus


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

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

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

nmap <C-P> :Files<Enter>
