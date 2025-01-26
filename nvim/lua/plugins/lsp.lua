return {
  "neovim/nvim-lspconfig",
  lazy = false, -- Ensure the plugin loads immediately
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Python (pyright)
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    -- C++ (clangd)
    lspconfig.clangd.setup({
      capabilities = capabilities,
    })
  end,
}
