return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✔",
                    package_pending = "➜",
                    package_uninstalled = "×"
                }
            }
        })
        
        mason_lspconfig.setup({
            ensure_installed = { "clangd" },
            automatic_installation = true,
        })
        
        lspconfig.clangd.setup({
            on_attach = function(client, bufnr)
                local opts = { noremap = true, silent = true }
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            end,
        })
    end
}
