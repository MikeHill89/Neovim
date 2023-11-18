vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fj", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ':write<CR>')
vim.keymap.set("n", "<leader>q", ':exit<CR>')

vim.g.tmux_navigator_no_mappings = 1

vim.api.nvim_set_keymap('n', '<c-h>', ':<C-U>TmuxNavigateLeft<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<c-j>', ':<C-U>TmuxNavigateDown<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<c-k>', ':<C-U>TmuxNavigateUp<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<c-l>', ':<C-U>TmuxNavigateRight<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<c-;>', ':<C-U>TmuxNavigatePrevious<CR>', {silent = true})

