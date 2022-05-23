-- IGNORE FILES BIGGER THAN A THRESHOLD
local previewers = require("telescope.previewers")
local new_maker = function(filepath, bufnr, opts)
  opts = opts or {}

  filepath = vim.fn.expand(filepath)
  vim.loop.fs_stat(filepath, function(_, stat)
    if not stat then return end
    if stat.size > 100000 then
      return
    else
      previewers.buffer_previewer_maker(filepath, bufnr, opts)
    end
  end)
end

-- COC
require('telescope').load_extension('coc')

-- FZF NATIVE
require('telescope').load_extension('fzy_native')
-- require('telescope').load_extension('git_worktree')

-- TELESCOPE MY SETTINGS
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {

    prompt_prefix = '🔍',
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    color_devicons = true,
    buffer_previewer_maker = new_maker,

    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim" -- add this value
    },

    -- pickers = {
    --   find_files = {
    --     theme = "ivy"
    --   },
    -- },

    mappings = {
      n = {
        -- ["<M-p>"] = action_layout.toggle_preview,
      },
      i = {
        ["<esc>"] = actions.close,
        ["<C-h>"] = "which_key",
        ["<C-u>"] = false
      },
    },
  }
}

-- Falling back to find_files if git_files can't find a .git directory
local M = {}

M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

return M
