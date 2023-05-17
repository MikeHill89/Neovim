local builtin = require('telescope.builtin')

function TelescopeFindFilesCwd()
    local current_dir = vim.fn.expand('%:p:h')
    vim.cmd('cd ' .. current_dir)
    require('telescope.builtin').find_files({
        cwd = current_dir,
    })
end

function GrepString()
  local current_dir = vim.fn.expand('%:p:h')
  local search_term = vim.fn.input("Grep > ")
  vim.cmd('cd ' .. current_dir)
  require('telescope.builtin').grep_string({
    search = search_term,
    cwd = current_dir,
  })
end



vim.keymap.set('n', '<leader>pf', TelescopeFindFilesCwd, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', GrepString,{})
    -- You dont need to set any of these options. These are the default ones. Only
    -- the loading is important
    require('telescope').setup {
        extensions = {
            fzf = {
                fuzzy = true,                   -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true,    -- override the file sorter
                case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            }
        }
    }
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require('telescope').load_extension('fzf')
