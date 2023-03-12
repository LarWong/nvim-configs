-- Override noice.nvim configs
return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = { view = "cmdline" },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
      },
    },
  },
}
