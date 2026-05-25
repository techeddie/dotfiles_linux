-- Interactive REPL for running code without leaving the editor
return {
  "Vigemus/iron.nvim",
  config = function()
    local iron = require("iron.core")

    iron.setup({
      config = {
        repl_definition = {
          python = { command = { "python3" } },
        },
        repl_open_cmd = "vertical botright 60 split",
      },
      keymaps = {}, -- custom keymaps defined below
    })

    -- Helper: strip comment and blank lines before sending
    local function filter_lines(lines)
      return vim.tbl_filter(function(line)
        return not line:match("^%s*#") and not line:match("^%s*$")
      end, lines)
    end

    -- Send entire file (no comments)
    vim.keymap.set("n", "<F5>", function()
      local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
      iron.send(nil, filter_lines(lines))
    end, { desc = "Send file to REPL (no comments)" })

    -- Send current line (skip if it's a comment)
    vim.keymap.set("n", "<F9>", function()
      local line = vim.api.nvim_get_current_line()
      if not line:match("^%s*#") then
        iron.send(nil, { line })
      end
    end, { desc = "Send line to REPL (no comments)" })

    -- Send visual selection (no comments)
    vim.keymap.set("v", "<F9>", function()
      local start_line = vim.fn.line("'<")
      local end_line = vim.fn.line("'>")
      local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
      iron.send(nil, filter_lines(lines))
    end, { desc = "Send selection to REPL (no comments)" })

  end,
}
