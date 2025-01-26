return {
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true, -- Enable Treesitter integration for better context awareness
            })
        end,
    },
}
