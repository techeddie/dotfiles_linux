return {
  "Vigemus/iron.nvim",
  config = function()
    require("iron.core").setup({
      config = {
        repl_definition = {
          python = { command = { "python3" } },
        },
        repl_open_cmd = "vertical botright 60 split",
      },
      keymaps = {
        send_file = "<leader>rf",   -- send entire file
        send_line = "<leader>rl",   -- send current line
        send_line = "<F9>",   -- send current line
        send_mark = "<leader>rm",   -- send visual selection
      },
    })
  end,
}
