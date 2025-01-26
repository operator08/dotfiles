require("config.lazy")
require("config.keymaps")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.autopairs")
require("plugins.lsp")
require("plugins.colorscheme")

-- Block caret 
--vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"

-- No line highlighting
vim.o.cursorline = false

-- Disable cursorline specifically for netrw
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.cursorline = false
    end,
})

