-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- keep cursor vertically centered
-- map("n", "j", "v:count == 0 ? 'gjzz' : 'jzz'", { expr = true, silent = true })
-- map("n", "k", "v:count == 0 ? 'gkzz' : 'kzz'", { expr = true, silent = true })

-- jump to bottom and keep cursor in center
map("n", "G", "Gzz", { silent = true })

-- do not replace clipboard when pasting in V mode
map("v", "p", '"_dP', { silent = true })

-- term mode: esc to exit insert
map("t", "<Esc>", "<C-\\><C-n>", { silent = true })
