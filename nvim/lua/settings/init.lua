local set = vim.opt

set.splitbelow = true
set.splitright = true
set.incsearch = true

set.shiftwidth=2
set.tabstop=2
set.smartcase=true
set.smartindent=true

set.cursorline = true
set.wrap = false
set.scrolloff= 4
set.termguicolors = true
set.updatetime=250
set.hidden = true
set.signcolumn = 'yes'

set.background='dark'

set.clipboard='unnamedplus'

vim.cmd [[
  colorscheme everforest
  set nocompatible

  set number relativenumber
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
]]

