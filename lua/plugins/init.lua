P = {}

local plugins = {
  "cmp",
  "luasnip",
  "mason",
  "mason-null",
  "noice",
  "nvim-lspconfig",
  "symbols-outline",
  "telescope",
  "treesitter",
  "trouble",
}

for _, plugin in ipairs(plugins) do
  local config = require("plugins.configs." .. plugin)
  vim.list_extend(P, config)
end

return P
