" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>



"let g:toggleterm_terminal_mapping = '<C-t>'
" nnoremap <A-t> :ToggleTerm size=10 dir=. direction=horizontal<CR>

" lua << EOF
" require("toggleterm").setup{
"   -- size can be a number or function which is passed the current terminal
"   size = 20 | function(term)
"     if term.direction == "horizontal" then
"       return 15
"     elseif term.direction == "vertical" then
"       return vim.o.columns * 0.4
"     end
"   end,
"   open_mapping = [[<c-\>]],
"   hide_numbers = true, -- hide the number column in toggleterm buffers
"   shade_filetypes = {},
"   shade_terminals = true,
"   shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
"   start_in_insert = true,
"   insert_mappings = true, -- whether or not the open mapping applies in insert mode
"   persist_size = true,
"   direction = 'vertical' | 'horizontal' | 'window' | 'float',
"   close_on_exit = true, -- close the terminal window when the process exits
"   shell = vim.o.shell, -- change the default shell
"   -- This field is only relevant if direction is set to 'float'
"   float_opts = {
"     -- The border key is *almost* the same as 'nvim_open_win'
"     -- see :h nvim_open_win for details on borders however
"     -- the 'curved' border is a custom border type
"     -- not natively supported but implemented in this plugin.
"     border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
"     width = <value>,
"     height = <value>,
"     winblend = 3,
"     highlights = {
"       border = "Normal",
"       background = "Normal",
"     }
"   }
" }
" EOF
