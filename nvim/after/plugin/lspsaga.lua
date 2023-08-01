local lspsaga = require('lspsaga')

vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>')
vim.keymap.set('v', '<leader>ca', '<cmd>Lspsaga range_code_action<CR>')
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
vim.keymap.set('n', '<C-f>', '<cmd>Lspsaga lsp_finder<CR>')
vim.keymap.set('n', '<leader>rn', '<cmd>Lspsaga rename<CR>')
vim.keymap.set('n', '<leader>gd', '<cmd>Lspsaga preview_definition<CR>')
vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>')
