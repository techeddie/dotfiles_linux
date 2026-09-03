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

-- AUTO-RELOAD files that changed on disk (external process, git, formatter, ...)
-- `autoread` reloads the buffer silently when it has NO unsaved changes.
-- When the buffer IS modified, nvim shows the W12 prompt (load vs. keep).
-- LazyVim only runs `checktime` on FocusGained; add CursorHold so it also
-- triggers while nvim is focused but idle (after `updatetime`, 200ms).
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("auto_reload_changed", { clear = true }),
  callback = function()
    if vim.o.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" and vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = vim.api.nvim_create_augroup("auto_reload_notify", { clear = true }),
  callback = function()
    vim.notify("File changed on disk — buffer reloaded", vim.log.levels.WARN, { title = "nvim" })
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
