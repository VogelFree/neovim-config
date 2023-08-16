require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "lua",
        "rust",
        "c_sharp",
        "go",
        "graphql",
        "html",
        "ini",
        "latex",
        "markdown_inline",
        "python",
        "sql",
        "terraform",
        "yaml",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
