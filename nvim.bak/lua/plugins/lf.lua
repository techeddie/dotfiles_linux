return {
  "lmburns/lf.nvim",
  cmd = "Lf",
  dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
  opts = {
    highlights = { NormalFloat = { guibg = "NONE" } },
    border = "single", --rounded
    escape_quit = true,
    lf_netrw = 1,
    default_action = "drop",
    dir = "",
    direction = "float",
    focus_on_open = true,
    mappings = true,
    tmux = false,
    default_file_manager = false,
    disable_netrw_warning = true,
    winblend = 5,
  },
  keys = {
    { "<leader>lf", "<cmd>Lf<cr>", desc = "Lf File Manager" },
    { "<M-l>", "<cmd>Lf<cr>", desc = "Lf File Manager" },
  },
}
