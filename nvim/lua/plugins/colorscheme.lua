return {
  "tiagovla/tokyodark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyodark")
  end,
  keys = function()
    return {
      { "<C-k>", ":qall! <CR>" },
    }
  end,
}
