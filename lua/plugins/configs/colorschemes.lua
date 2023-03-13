-- Add colorscheme plugins

return {
  -- ALTERNATIVE COLORSCHEMES HERE --
  {
    "sainnhe/sonokai",
    config = function()
      vim.g.sonokai_style = "andromeda"
    end,
  },

  {
    "navarasu/onedark.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
  },

  -- SET DEFAULT COLORSCHEME --
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
