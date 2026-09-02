-- Lightweight file explorer with buffer-like editing
return {
  "nvim-mini/mini.files",
  keys = {
    {
      "<leader>e",
      function()
        local mf = require("mini.files")
        if not mf.close() then
          mf.open(vim.api.nvim_buf_get_name(0), false)
        end
      end,
      desc = "Explorer (mini.files)",
    },
  },
  opts = {
    mappings = {
      go_in_plus = "o",
      go_in      = "l",
    },
  },
  config = function(_, opts)
    require("mini.files").setup(opts)
    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        vim.keymap.set("n", "<CR>", require("mini.files").go_in, { buffer = args.data.buf_id })
        -- vim.keymap.set("n", "e", require("mini.files").go_in, { buffer = args.data.buf_id })
      end,
    })
  end,
}
