vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true })

vim.api.nvim_set_keymap('i', '<C-x><C-o>', [[<Cmd>lua require('cmp').complete()<CR>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<C-P>', ':GFiles<Enter>', {})
vim.api.nvim_set_keymap('n', '<C-B>', ':Buffers<Enter>',{})
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '[b', ':bprev<CR>', {})


