" In your init.lua or init.vim
set termguicolors

lua << EOF
require'marks'.setup {
  -- whether to map keybinds or not. default true
  default_mappings = true,
  -- which builtin marks to show. default {}
}

EOF
