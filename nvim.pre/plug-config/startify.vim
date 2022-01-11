""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"STARTIFY BOOKMARK
let g:startify_bookmarks = [
      \ {'p': '~/.config/nvim/plugins.vim'}, 
      \ {'n': '~/.config/nvim/init.vim'},
      \ {'k': '~/.config/nvim/keys.vim'},
      \ {'s': '~/.config/nvim/settings.vim'},
      \ {'v' : '~/.config/vifm/vifmrc'}, 
      \ {'z' : '~/.zshrc'},
      \ {'i' : '~/.config/i3/config'},
      \ {'a' : '~/.config/alacritty/alacritty.yml'},
      \ {'bc' : '~/.config/polybar/config'},
      \ {'gl' : '~/.config/polybar/launch.sh'},
      \ {'rb' : '~/scripts/runBackup.sh'},
      \ {'rtb' : '~/scripts/runTimeshiftBackup.sh'},
      \ {'lc' : '~/Nextcloud/LINUX/LINUX_COMMANDS.sh'}      
      \ ]
let g:startify_session_autoload = 0  "restart session on startup"
let g:startify_change_to_vcs_root = 1
let g:startify_enable_special = 1
let g:startify_session_dir = '~/.config/nvim/plug-config/sessions'
let g:startify_files_number = 7

let g:ascii = []
let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

          " \ { 'type': 'sessions',  'header': ['   Sessions']       },
autocmd vimenter * if !argc() | Startify | endif
