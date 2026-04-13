return {
  "MagicDuck/grug-far.nvim",
  keys = {
    {
      "<leader>sr",
      function()
        require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
      end,
      desc = "Find & Replace (current file)",
    },
    {
      "<leader>sR",
      function()
        require("grug-far").open()
      end,
      desc = "Find & Replace (project)",
    },
  },
  opts = {},
}
