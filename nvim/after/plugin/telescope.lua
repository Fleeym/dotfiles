local telescope = require("telescope")

telescope.setup {
    extensions = {
        file_browser = {
            hijack_netrw = true
        }
    }
}

telescope.load_extension "file_browser"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pv', function()
    require("telescope").extensions.file_browser.file_browser()
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
