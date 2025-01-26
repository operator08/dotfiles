return {
       -- Solarized Colorscheme (Optional)
    {
        'maxmx03/solarized.nvim',
        lazy = false, -- Lazy load to avoid overwriting Ashen
        priority = 1000,
        ---@type solarized.config
        opts = {
            theme = 'light', -- Explicitly set Solarized Light theme
        },
        config = function(_, opts)
            vim.o.termguicolors = true
            vim.o.background = 'light' -- Set background to light mode
            require('solarized').setup(opts)
        end,
    },

    -- Kanagawa Colorscheme (Optional)
    {
        "rebelot/kanagawa.nvim",
        lazy = true, -- Lazy load to avoid overwriting Ashen
        priority = 800,
        config = function()
            require("kanagawa").setup({
                compile = false,
                undercurl = true,
                commentStyle = { italic = true },
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                transparent = false,
                dimInactive = false,
                theme = "wave",
                background = {
                    dark = "wave",
                    light = "lotus",
                },
            })
        end,
    },

    -- Gruvbox Material Colorscheme (Optional)
    {
        "sainnhe/gruvbox-material",
        lazy = true, -- Lazy load to avoid overwriting Ashen
        priority = 700,
        config = function()
            vim.g.gruvbox_material_background = "soft"         -- Contrast: 'hard', 'medium', 'soft'
            vim.g.gruvbox_material_enable_italic = 1           -- Enable italics
            vim.g.gruvbox_material_better_performance = 1      -- Performance optimizations
            vim.o.background = "dark"                         -- Use dark mode
        end,
    },
}

