local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Define a shorthand for mapping keys
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Compile and run C++ code
map("n", "<leader>r", ":w | !g++ -std=c++17 % -o %:r && ./%:r<CR>", opts)

-- General settings
vim.o.number = true         -- Show line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.wrap = false          -- Disable line wrap
vim.o.cursorline = true     -- Highlight the current line
vim.o.hlsearch = false      -- Disable highlight search
vim.o.ignorecase = true     -- Case insensitive search
vim.o.smartcase = true      -- Case sensitive if uppercase in search
vim.o.scrolloff = 8         -- Keep 8 lines visible above/below cursor
vim.o.sidescrolloff = 8     -- Keep 8 columns visible left/right of cursor

-- Tab and indentation
vim.o.smartindent = true    -- Enable smart indentation
vim.o.autoindent = true     -- Copy the indentation from the current line
vim.o.expandtab = true      -- Use spaces instead of tabs
vim.o.tabstop = 4           -- Display a tab as 4 spaces
vim.o.shiftwidth = 4        -- Indentation level for auto-indents

-- Performance
vim.o.lazyredraw = true     -- Improve performance during macro execution
vim.o.updatetime = 300      -- Faster completion

-- Appearance
vim.o.termguicolors = true  -- Enable 24-bit RGB colors
vim.o.signcolumn = "yes"    -- Always show the sign column

-- Bind :Ex to leader + e
vim.api.nvim_set_keymap("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })

-- Bind Shift + Enter to Enter to insure proper indentation
vim.api.nvim_set_keymap("i", "<S-CR>", "<CR>", { noremap = true, silent = true })

--vim.o.guicursor = "n-v-c:block,i-ci-ve:hor25,r-cr:hor20,o:hor50"
vim.o.guicursor = "n-v-c:block-Cursor"

