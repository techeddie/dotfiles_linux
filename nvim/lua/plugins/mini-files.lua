return {
  "nvim-mini/mini.files",
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
