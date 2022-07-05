let g:fern#disable_default_mappings = 1
let g:fern#default_hidden = 1

"symbols
" let g:fern#mark_symbol                       = '●'
" let g:fern#renderer#default#collapsed_symbol = '▷ '
" let g:fern#renderer#default#expanded_symbol  = '▼ '
" let g:fern#renderer#default#leading          = ' '
" let g:fern#renderer#default#leaf_symbol      = ' '
" let g:fern#renderer#default#root_symbol      = '~ '
let g:fern#renderer = "nerdfont"

noremap <silent> <Leader>d :Fern . -drawer -width=35 -toggle<CR><C-w>=
noremap <silent> <C-n> :Fern . -drawer -reveal=% -width=35 -toggle<CR><C-w>=

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )

nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
nmap <buffer> o <Plug>(fern-my-open-expand-collapse)
nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
nmap <buffer> n <Plug>(fern-action-new-path)
nmap <buffer> d <Plug>(fern-action-remove)
nmap <buffer> - <Plug>(fern-action-collapse)
nmap <buffer> m <Plug>(fern-action-move)
nmap <buffer> r <Plug>(fern-action-rename)
nmap <buffer> . <Plug>(fern-action-hidden-toggle)
nmap <buffer> R <Plug>(fern-action-reload)
nmap <buffer> <Space> <Plug>(fern-action-mark:toggle)
nmap <buffer> s <Plug>(fern-action-mark:set)
nmap <buffer> u <Plug>(fern-action-focus:parent)
nmap <buffer> b <Plug>(fern-action-focus:select)
nmap <buffer> K <Plug>(fern-action-mark-children:leaf)
nmap <buffer> h <Plug>(fern-action-open:split)
nmap <buffer> v <Plug>(fern-action-open:vsplit)
nmap <buffer><nowait> < <Plug>(fern-action-leave)
nmap <buffer><nowait> K <Plug>(fern-action-leave)
nmap <buffer><nowait> > <Plug>(fern-action-enter)
nmap <buffer><nowait> J <Plug>(fern-action-enter)
nmap <buffer><nowait> c <Plug>(fern-action-copy)
nmap <buffer><nowait> y <Plug>(fern-action-copy)
nmap <buffer><nowait> z <Plug>(fern-action-cd:root)
nmap <buffer><nowait> Z <Plug>(fer>-action-tcd:~)

endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern setlocal norelativenumber | setlocal nonumber | call FernInit()
augroup END

let g:fern_git_status#disable_ignored    = 1
let g:fern_git_status#disable_untracked  = 1
let g:fern_git_status#disable_submodules = 1
