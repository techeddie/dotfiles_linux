-- Replaces cmdline, messages, and popupmenu with a modern UI
return {
  "folke/noice.nvim",
  keys = {
    -- disable the default flash keymap
    { "<c-f>", mode = { "n", "x", "o" }, false },
  },
}
