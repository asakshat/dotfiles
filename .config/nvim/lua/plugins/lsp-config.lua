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
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua.setup({})
        end
    }
}
