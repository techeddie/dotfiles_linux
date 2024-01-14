-- local api = vim.api
-- local M = {}

-- vim.cmd [[
--   "autocommand that opens sidebar whenever lua files are opened
--   augroup keymap_user_config
--     autocmd!
--     autocmd BufRead *.lua SidebarNvimToggle
--  augroup end
-- ]]

--
-- function M.makeScratch()
--   api.nvim_command('enew') -- equivalent to :enew
--   vim.bo[0].buftype=nofile -- set the current buffer's (buffer 0) buftype to nofile
--   vim.bo[0].bufhidden=hide
--   vim.bo[0].swapfile=false
-- end

-- return M


-- vim.g.loaded_tutor_mode_plugin = 1
-- vim.g.2html_plugin = 1

-- Disable some builtin vim plugins
-- local builtin_plugins = {
  -- "getscript",
  -- "getscriptPlugin",
  -- "gzip",
  -- "logipat",
  -- "netrw",
  -- "netrwPlugin",
  -- "netrwSettings",
  -- "netrwFileHandlers",
  -- "matchit",
  -- "matchparen",
  -- "tar",
  -- "tarPlugin",
  -- "rrhelper",
  -- "vimball",
  -- "vimballPlugin",
  -- "zip",
  -- "zipPlugin",
-- -- }

-- for _, plugin in pairs(builtin_plugins) do
--    vim.g["loaded_"..plugin] = 1
--

-- --FOLD
-- local vim = vim
-- local api = vim.api
-- local M = {}
-- -- function to create a list of commands and convert them to autocommands
-- -------- This function is taken from https://github.com/norcalli/nvim_utils
-- function M.nvim_create_augroups(definitions)
--     for group_name, definition in pairs(definitions) do
--         api.nvim_command('augroup '..group_name)
--         api.nvim_command('autocmd!')
--         for _, def in ipairs(definition) do
--             local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
--             api.nvim_command(command)
--         end
--         api.nvim_command('augroup END')
--     end
-- end
--
--
-- local autoCommands = {
--     -- other autocommands
--     open_folds = {
--         {"BufReadPost,FileReadPost", "*", "normal zR"}
--     }
-- }
--
-- M.nvim_create_augroups(autoCommands)
