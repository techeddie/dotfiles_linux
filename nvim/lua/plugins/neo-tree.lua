return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- Swap: e -> cwd, E -> root dir
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)",     remap = true },
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
  },
}
