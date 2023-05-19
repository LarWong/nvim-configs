-- Override nvim-lspconfig configs
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      diagnostics = {
        update_in_insert = true,
        virtual_text = false, -- disable inline diagnostics
      },
    },
  },
}
