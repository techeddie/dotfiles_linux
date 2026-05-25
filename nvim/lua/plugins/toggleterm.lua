-- Toggle floating or split terminal windows
return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup()
  end,
}
