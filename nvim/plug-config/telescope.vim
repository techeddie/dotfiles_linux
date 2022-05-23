autocmd User TelescopePreviewerLoaded setlocal wrap

"Ctrl+p > Fuzzy find in all files 
      nnoremap <C-p> <cmd>Telescope find_files hidden=false<cr>
"Shift+f > Fuzzy find in all files
      nnoremap <S-f> <cmd>Telescope find_files<cr>
"Ctrl a+h > Fuzzy Command History 
      nnoremap <C-a><C-h> <cmd>Telescope command_history <cr>
"Ctrl+f > Fuzzy find in current buffer
      nnoremap <C-f>  <cmd>Telescope current_buffer_fuzzy_find<cr>
      "// > Fuzzy find in current buffer
      nnoremap //  <cmd>Telescope current_buffer_fuzzy_find<cr>
"Ctrl+l > Fuzzy show current buffers
      " nnoremap <C-l> <cmd>Telescope buffers<cr>
"Alt+g Fuzzy live grep
      nnoremap <M-g> <cmd>Telescope live_grep<cr>
"Alt+g Fuzzy live grep
      nnoremap ?? <cmd>Telescope live_grep<cr>

nnoremap <leader>fch <cmd>Telescope command_history <CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fd <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope find_files cwd=~/repoGIT/<cr>
nnoremap <leader>fc <cmd>Telescope find_files cwd=~/.config/ <cr>
nnoremap <leader>fn <cmd>Telescope find_files cwd=~/.config/nvim <cr>
nnoremap <leader>fi <cmd>Telescope find_files cwd=~/.config/i3 <cr>
nnoremap <leader>fp <cmd>Telescope find_files cwd=~/.config/polybar <cr>
nnoremap <leader>fs <cmd>Telescope find_files cwd=~/.ssh/ <cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>h <cmd>Telescope oldfiles<cr>
nnoremap <c-h> <cmd>Telescope oldfiles<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
" nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gc <cmd>Telescope git_bcommits<cr>


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

require('telescope').load_extension('fzy_native')
EOF
