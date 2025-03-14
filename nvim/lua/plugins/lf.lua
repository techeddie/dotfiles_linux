return {
  -- https://github.com/lmburns/lf.nvim
  "lmburns/lf.nvim",
  config = function()
    -- This feature will not work if the plugin is lazy-loaded
    vim.g.lf_netrw = 1

    require("lf").setup({
      escape_quit = false,
      default_action = "drop", -- default action when `Lf` opens a file
      dir = "", -- directory where `lf` starts ('gwd' is git-working-directory, ""/nil is CWD)
      direction = "float", -- window type: float horizontal vertical
      border = "rounded", -- border kind: single double shadow curved
      focus_on_open = true, -- focus the current file when opening Lf (experimental)
      mappings = true, -- whether terminal buffer mapping is enabled
      tmux = false, -- tmux statusline can be disabled on opening of Lf
      default_file_manager = false, -- make lf default file manager
      disable_netrw_warning = true, -- don't display a message when opening a directory with `default_file_manager` as true
      -- winblend = 50, -- psuedotransparency level
    })

    vim.keymap.set("n", "<M-l>", "<Cmd>Lf<CR>")
    vim.keymap.set("n", "<leader>lf", "<Cmd>Lf<CR>")
  end,
  requires = { "toggleterm.nvim" },
}
