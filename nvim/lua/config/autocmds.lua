-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

-- AUTO PWD
vim.api.nvim_create_autocmd("BufEnter", {
  desc = "change cwd to current file's directory",
  callback = function()
    local file = vim.api.nvim_buf_get_name(0)
    if file ~= "" and vim.fn.filereadable(file) == 1 then
      vim.cmd("lcd " .. vim.fn.fnameescape(vim.fn.fnamemodify(file, ":h")))
    end
  end,
})

--- AUTOFORMAT SETTING
-- local set_autoformat = function(pattern, bool_val)
--   vim.api.nvim_create_autocmd({ "FileType" }, {
--     pattern = pattern,
--     callback = function()
--       vim.b.autoformat = bool_val
--     end,
--   })
-- end
