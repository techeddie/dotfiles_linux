local actions require('telescope.actions')

require('telescope').load_extension('fzy_native')
-- require('telescope').load_extension('git_worktree')

local actions require('telescope.actions')
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    prompt_prefix = '🔍',
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    color_devicons = true,

    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
		["<C-x>"] = false,
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {

		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
  },

  -- extensions = {
  --       fzy_native = {
  --             override_generic_sorter = false,
  --             override_file_sorter = true,
  --       }
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
}

