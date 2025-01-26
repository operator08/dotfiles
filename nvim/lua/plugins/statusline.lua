return {
    {
        "nvim-lualine/lualine.nvim", -- The lualine.nvim plugin
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional, for icons
        config = function()
            require("lualine").setup({
                options = {
                    theme = "gruvbox-material", -- Set theme to match your colorscheme
                    icons_enabled = true,       -- Enable icons
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                    globalstatus = true,        -- Enable global statusline (requires Neovim 0.7+)
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = { "location" },
                    lualine_y = {},
                    lualine_z = {},
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {},
            })
        end,
    },
}

