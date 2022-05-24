autocmd User TelescopePreviewerLoaded setlocal wrap

"Ctrl+p > Fuzzy find in all files 
      nnoremap <C-p> <cmd>Telescope find_files hidden=false sorting_strategy=ascending<cr>
"Shift+f > Fuzzy find in all files
      nnoremap <S-f> <cmd>Telescope find_files sorting_strategy=ascending<cr>
"Ctrl a+h > Fuzzy Command History 
      nnoremap <C-a><C-h> <cmd>Telescope command_history sorting_strategy=ascending<cr>
"Ctrl+f > Fuzzy find in current buffer
      nnoremap <C-f>  <cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<cr>
      "// > Fuzzy find in current buffer
      nnoremap //  <cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<cr>
"Ctrl+l > Fuzzy show current buffers
      " nnoremap <C-l> <cmd>Telescope buffers<cr>
"Alt+g Fuzzy live grep
      nnoremap <M-g> <cmd>Telescope live_grep sorting_strategy=ascending<cr>
"Alt+g Fuzzy live grep
      nnoremap ?? <cmd>Telescope live_grep<cr>

nnoremap <leader>g :Telescope live_grep sorting_strategy=ascending<cr>
nnoremap <leader>gs :Telescope git_status sorting_strategy=ascending<cr>
nnoremap <leader>gc :Telescope git_bcommits sorting_strategy=ascending<cr> 
nnoremap <leader>gf :Telescope git_files sorting_strategy=ascending<cr> 

nnoremap <leader>gr :Telescope coc references_used<cr> 
nnoremap gr :Telescope coc references_used<cr> 
nnoremap <leader>gd :Telescope coc definitions<cr> 
nnoremap gd :Telescope coc definitions<cr> 

nnoremap <leader>fch :Telescope command_history sorting_strategy=ascending<cr>
nnoremap <leader>f :Telescope find_files sorting_strategy=ascending<cr><cr>
nnoremap <leader>ff :Telescope find_files sorting_strategy=ascending<cr>
nnoremap <leader>fd :Telescope find_files sorting_strategy=ascending<cr>
nnoremap <leader>fg :Telescope find_files cwd=~/repoGIT/ sorting_strategy=ascending<cr>
nnoremap <leader>fc :Telescope find_files cwd=~/.config/ sorting_strategy=ascending<cr>
nnoremap <leader>fn :Telescope find_files cwd=~/.config/nvim sorting_strategy=ascending<cr>
nnoremap <leader>fi :Telescope find_files cwd=~/.config/i3 sorting_strategy=ascending<cr>
nnoremap <leader>fp :Telescope find_files cwd=~/.config/polybar sorting_strategy=ascending<cr>
nnoremap <leader>fs :Telescope find_files cwd=~/.ssh/ sorting_strategy=ascending<cr>
nnoremap <leader>fb :Telescope buffers sorting_strategy=ascending<cr>
nnoremap <leader>fh :Telescope help_tags sorting_strategy=ascending<cr>
nnoremap <leader>fr :Telescope coc references sorting_strategy=ascending<cr>

nnoremap <leader>h :Telescope command_history sorting_strategy=ascending<cr>
" nnoremap <c-h> :Telescope oldfiles sorting_strategy=ascending<cr>

" THEMES
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
