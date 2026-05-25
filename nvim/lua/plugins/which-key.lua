-- Show a popup with available keybindings based on the current prefix
return
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    -- preset = "classic", --show below
  },
}
