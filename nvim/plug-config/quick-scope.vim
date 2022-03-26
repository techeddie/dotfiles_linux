" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

"Quick-scope directly makes use of highlight groups called QuickScopePrimary
"and QuickScopeSecondary. By default QuickScopePrimary is linked to the
"Function group and QuickScopeSecondary is linked to the Define group. You can
"customize them by adding your own :highlight commands. 
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

" However, it is recommended to put them in an autocmd so that they are
" updated if and when the colorscheme changes. To achieve this you should put
" the following block before you set colorscheme <colorsname> (Note: if you do
" it after you will not see your colors).
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

" Highlighting delay
" The option g:qs_delay can be used to set the delay duration after
" which the highlighting starts if the cursor is not moved. This option
" increases performance. Taken into account only if g:qs_lazy_highlight
" and g:qs_highlight_on_keys are not enabled. If you set this to 0, the
" highlighting will be synchronous. It requires has('timers'). (default:
" 50)
let g:qs_delay = 0
