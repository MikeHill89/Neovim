require("mikehill89.core.remap")
require("mikehill89.core.set")

-- Use wl-clipboard for copying to the clipboard
vim.opt.clipboard:append("unnamedplus")
-- Map <Leader>ct to copy the visually selected text to the clipboard using wl-copy
vim.api.nvim_set_keymap('x', '<Leader>ck', [[:<C-U>'<,'>w !wl-copy<CR>]], { noremap = true, silent = true })
