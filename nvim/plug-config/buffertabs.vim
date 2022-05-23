" In your init.lua or init.vim
set termguicolors

lua << EOF
  require"bufferline".setup{
      options = {
      close_command = "bdelete! %d", 
      buffer_close_icon= "|",
      modified_icon = "●",
      show_close_icon = false,
      always_show_bufferline = true,
      show_tab_indicators = true,
      tab_size = 4,
      max_name_length = 12,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      numbers = "ordinal",
      left_trunc_marker = "",
      right_trunc_marker = "",
      diagnostics = "coc",
      persist_buffer_sort = true,
      enforce_regular_tabs =  false,
      show_buffer_icons = true,
      show_tab_indicators = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
      -- enforce_regular_tabs = true,
      always_show_bufferline = true,
      middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
      left_trunc_marker = "",
      right_trunc_marker = "",
      sort_by = "relative_directory"-- | "directory" | "tabs" | function(buffer_a, buffer_b)
  }
}
EOF
