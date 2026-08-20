return {
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },
  { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Set your active colorscheme here — swap the name to switch theme
      vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme tokyonight")
      -- vim.cmd("colorscheme catppuccin")
      -- vim.cmd("colorscheme kanagawa")
      -- vim.cmd("colorscheme nightfox")
      -- vim.cmd("colorscheme tokyodark")

      -- file types
      vim.filetype.add({
        filename = {
          ["lfrc"] = "sh",
        },
      })
    end,
  },
}
