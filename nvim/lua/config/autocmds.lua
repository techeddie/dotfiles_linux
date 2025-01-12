-- AUTOCOMMANDS
local M = {}
function M.autocmd(event, triggers, operations)
  local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
 vim.cmd(cmd)
end

M.autocmd("TermOpen",     "*",   "setl bufhidden=hide")
M.autocmd("TermOpen",     "*",   "startinsert")
M.autocmd("TermOpen",     "*",   "setl nonumber")
M.autocmd("BufEnter",     "*",   "silent! lcd %:p:h")

--
local cmd = vim.cmd

cmd [[
  "AUTOCOMMANDS"
    set statusline+=%{get(b:,'gitsigns_status','')}
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd BufWritePost keymaps.lua source ~/.config/nvim/lua/config/keymaps.lua"
    autocmd BufWritePost autocmds.lua source ~/.config/nvim/lua/config/autocmds.lua"
    autocmd BufWritePost colorscheme.lua source ~/.config/nvim/lua/config/colorscheme.lua"
    autocmd BufWritePost telescope.lua source ~/.config/nvim/lua/plugconfig/telescope.lua"
    autocmd BufWritePost settings.lua source ~/.config/nvim/lua/config/settings.lua"

    autocmd FileType sh nmap <F5> <ESC>:w<CR>:ter zsh "%"<CR>
    "autocmd FileType sh nmap <F8> <ESC>:.w !bash<cr>
    "autocmd FileType sh vmap <F8> <ESC>:.w !bash<cr>
    "autocmd FileType lua nmap <F5> <ESC>:w<CR>:ter lua "%"<CR>

    "autocmd FileType lua nmap <F5> :TermExec cmd="lua %:p" direction=horizontal<cr>
    "autocmd FileType lua nmap <F5> <ESC>:w<cr> :!lua5.4 %<cr>
    "autocmd BufReadPost,FileReadPost * normal zR

    "FORMAT ON SAVE
    " autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
    ""-- autocmd BufWritePre * sh vim.lsp.buf.formatting_sync()

    "CHANGE PWD WHEN OPENING A FILE - causing issue with toggleterm and autopairs
     "autocmd BufEnter * if &buftype =="toggleterm" | lcd %:p:h 

    "CHANGE PWD WHEN OPENING A FILE - TESTING
       autocmd BufEnter * silent! lcd %:p:h
]]
