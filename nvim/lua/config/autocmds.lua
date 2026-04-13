-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

-- AUTO PWD
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- nur wenn nvim ohne Datei geöffnet wurde
    if vim.fn.argc() == 0 then
      local cwd = vim.fn.getcwd()
      vim.cmd("cd " .. cwd)
      -- neo-tree oder snacks explorer im aktuellen Ordner öffnen
      require("neo-tree.command").execute({ dir = cwd })
    end
  end,
})

--- Autoformat setting
-- local set_autoformat = function(pattern, bool_val)
--   vim.api.nvim_create_autocmd({ "FileType" }, {
--     pattern = pattern,
--     callback = function()
--       vim.b.autoformat = bool_val
--     end,
--   })
-- end
