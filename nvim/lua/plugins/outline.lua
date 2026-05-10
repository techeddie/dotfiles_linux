return {
  "hedyhli/outline.nvim",
  cmd = { "Outline", "OutlineOpen" },
  keys = {
    { "<leader>a", "<cmd>Outline<cr>", desc = "toggle outline" },
  },
  opts = {
    window = { position = "right", width = 25 },
    auto_close = false,
    auto_jump = true,
  },
}
