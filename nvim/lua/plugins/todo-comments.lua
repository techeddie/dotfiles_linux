-- Highlight and search TODO, FIXME, NOTE, and similar comments in code
return {
  "folke/todo-comments.nvim",
  opts = {},
  keys = {
    {
      "<leader>td",
      function()
        require("snacks").picker.todo_comments({ buf = 0 })
      end,
      desc = "Todo (current buffer)",
    },
  },
}
