return {
  "folke/zen-mode.nvim",
  keys = {
    { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  },
  opts = {
    window = {
      backdrop = 1,
      width = 130,
      height = 1,
      options = {
        signcolumn = "no",
        number = false,
        relativenumber = false,
        cursorline = false,
      },
    },
  },
}
