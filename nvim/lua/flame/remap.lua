-- Move selected lines up / down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enables netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy to system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- format
vim.keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end)
