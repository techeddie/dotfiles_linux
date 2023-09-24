require('indent_blankline').setup {
  indentLine_enabled = 1,
  char = '┊',
  indent_blankline_char = "│",
  show_trailing_blankline_indent = false,
  indent_blankline_buftype_exclude = { "terminal", "nofile" , "" },
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "text",
  },
  indent_blankline_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
  },
  indent_blankline_show_trailing_blankline_indent = false,
  indent_blankline_show_first_indent_level = true,
  indent_blankline_use_treesitter = true,
  indent_blankline_show_current_context = true,
  indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  }
}

-- vim.g.indent_blankline_char = "│"
-- vim.g.indent_blankline_char = "▏"
-- vim.g.indent_blankline_char = "▎"
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
-- vim.wo.colorcolumn = "99999"

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#0066FF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#00CCFF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#38B379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "space:"
-- vim.opt.listchars:append "eol:↴"

