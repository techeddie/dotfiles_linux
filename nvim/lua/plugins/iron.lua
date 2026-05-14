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
        send_file = "<F5>",   -- send entire file
        send_line = "<F9>",   -- send current line
        -- send_mark = "<leader>vm",   -- send visual selection
      },
    })
  end,
}
