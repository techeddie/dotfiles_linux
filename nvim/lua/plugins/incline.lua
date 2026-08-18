return {
  "b0o/incline.nvim",
  event = "VeryLazy",
  opts = {
    window = {
      padding = { left = 1, right = 1 },
      margin = { horizontal = 0, vertical = 1 },
      placement = { horizontal = "right", vertical = "top" },
    },
    render = function(props)
      -- -- relative path (from cwd)
      -- local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":.")
      -- -- absolute path
      -- local filename = vim.api.nvim_buf_get_name(props.buf)
      -- home-relative path (~/...)
      local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":~")

      local modified = vim.bo[props.buf].modified and " ● " or ""
      return { { modified, guifg = "#f85149" }, { filename, guifg = "#8b949e" } }
    end,
  },
}
