-- Add mason-null-ls plugin
local config = {
  ensure_installed = {
    "fourmolu",
  },
  automatic_installation = false,
  automatic_setup = true, -- Recommended, but optional
}

return {
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      local mason_null = require("mason-null-ls")
      mason_null.setup(config)
      mason_null.setup_handlers()
    end,
  },
}
