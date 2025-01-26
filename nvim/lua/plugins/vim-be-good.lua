return {
    -- Other plugins...

    {
        "ThePrimeagen/vim-be-good",
        lazy = false, -- Load immediately
        config = function()
            vim.g.vim_be_good_delete_me_offset = 35 -- Optional: Set custom offset
        end,
    },
}

