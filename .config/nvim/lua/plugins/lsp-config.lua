return {
    {
        "williamboman/mason.nvim",
        config = function() 
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "gopls", "dockerls","docker_compose_language_service", "sqls", "tsserver", "bashls", "yamlls" },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()

            local lspconfig = require('lspconfig')
            lspconfig.tailwindcss.setup({
                capabilities = capabilities
              })
              lspconfig.tsserver.setup({
                capabilities = capabilities
              })
             
              lspconfig.html.setup({
                capabilities = capabilities
              })
              lspconfig.lua_ls.setup({
                capabilities = capabilities
              })
              lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
              })
              lspconfig.dockerls.setup({
                capabilities = capabilities
              })
              lspconfig.gopls.setup({
                capabilities = capabilities
              })
              lspconfig.bashls.setup({
                capabilities = capabilities
              })
        end
    }
}
