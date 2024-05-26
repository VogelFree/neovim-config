return {
  "ionide/Ionide-vim",
  dependencies = { "neovim/nvim-lspconfig" },
  ft = "fsharp",
  opts = function(_, opts)
    vim.g["fsharp#show_signature_on_cursor_move"] = 0
    -- //vim.g["fsharp#lsp_auto_setup"] = 0
    vim.g["fsharp#workspace_mode_peek_deep_level"] = 4
    vim.api.nvim_create_user_command("FSharpRefreshCodeLens", function()
      vim.lsp.codelens.refresh()
      print("[FSAC] Refreshing CodeLens")
    end, {
      bang = true,
    })
  end,
}
