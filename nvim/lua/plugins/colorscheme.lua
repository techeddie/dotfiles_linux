return {
  "tiagovla/tokyodark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyodark")
  end,
  keys = function()
    return {
      { "<C-S-k>", ":qall! <CR>" },
      { "<C-S-q>", ":<C-w>q<CR>" },
    }
  end,
}
