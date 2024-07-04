local lspsaga = require('lspsaga')

lspsaga.setup({})

vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>')
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
vim.keymap.set('n', '<C-f>', '<cmd>Lspsaga finder<CR>')
vim.keymap.set('n', '<leader>rn', '<cmd>Lspsaga rename<CR>')
vim.keymap.set('n', '<leader>gd', '<cmd>Lspsaga preview_definition<CR>')
vim.keymap.set('n', '<C-n>', '<cmd>Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set('n', '<C-p>', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
