require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "csharp_ls",
        "ansiblels",
        "pylsp",
        "yamlls",
        "sqlls",
        "terraformls",
        "rust_analyzer",
        "helm_ls",
        "fsautocomplete",
        "dockerls",
    }
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
