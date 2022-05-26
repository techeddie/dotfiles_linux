
-- COC
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
  enable_moveright = true,
  enable_bracket_in_quote = false,
  disable_in_visualblock = true,
  check_ts = true,
  map_cr = true,
  map_bs = true

})

-- local disable_filetype = { "TelescopePrompt" }
-- local disable_in_macro = false  -- disable when recording or executing a macro
-- local disable_in_visualblock = false -- disable when insert after visual block mode
-- local ignored_next_char = [=[[%w%%%'%[%"%.]]=]
-- local enable_moveright = false
-- local enable_afterquote = true  -- add bracket pairs after quote
-- local enable_check_bracket_line = true  --- check bracket in same line
-- local enable_bracket_in_quote = true --
-- local check_ts = false
-- local map_cr = true
-- local map_bs = true  -- map the <BS> key
-- local map_c_h = false  -- Map the <C-h> key to delete a pair
-- local map_c_w = false -- map <c-w> to delete a pair if possible

