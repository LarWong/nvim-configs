-- Override nvim-lspconfig configs
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      diagnostics = {
        virtual_text = false, -- disable inline diagnostics
      },
    },
  },
}
