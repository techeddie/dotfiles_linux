return {
  "MagicDuck/grug-far.nvim",
  keys = {
    {
      "<leader>sr",
      function()
        local path = vim.fn.expand("%:p")
        require("grug-far").open({
          prefills = {
            paths = path,
            flags = "--fixed-strings",
          },
        })
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
  opts = {
    rgPath = "rg",
    extraArgs = "--smart-case",
  },
}
