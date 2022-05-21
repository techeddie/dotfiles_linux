autocmd User TelescopePreviewerLoaded setlocal wrap

"Ctrl+p > Fuzzy find files 
      nnoremap <C-p> <cmd>Telescope find_files hidden=false<cr>
"Shift+f > Fuzzy find files
      nnoremap <S-f> <cmd>Telescope find_files<cr>
"Ctrl a+h > Fuzzy Command History 
      nnoremap <C-a><C-h> <cmd>Telescope command_history <cr>
"Ctrl+f > Fuzzy Buffer grep string
      nnoremap <C-f>  <cmd>Telescope current_buffer_fuzzy_find<cr>
"Ctrl+l > Fuzzy show current buffers
      nnoremap <C-l> <cmd>Telescope buffers<cr>
"Alt+g Fuzzy live grep
      nnoremap <M-g> <cmd>Telescope live_grep<cr>
"Alt+g Fuzzy live grep
      nnoremap ?? <cmd>Telescope live_grep<cr>

nnoremap <leader>fch <cmd>Telescope command_history <cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gbc <cmd>Telescope git_bcommits<cr>

lua << EOF
local actions require('telescope.actions')
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    prompt_prefix = '🔍',
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    -- color_devicons = true,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
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
        }
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- require('telescope').load_extension('fzy_native')
EOF

" nnoremap <leader>vrc :lua require('eddie.telescope').search_dotfiles({ hidden = true })<cr>
