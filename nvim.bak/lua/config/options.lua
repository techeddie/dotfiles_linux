-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Editor options
--
local o = vim.opt

o.autoindent = false
o.backup = false
o.breakindent = true -- testing
o.cindent = true
o.clipboard = "unnamedplus"
o.cmdheight = 0
o.cursorline = true
o.expandtab = true
o.equalalways = true
o.hidden = true
o.history = 50
o.ignorecase = true
o.list = false
o.encoding = "UTF-8"
o.mouse = ""
o.number = true
o.numberwidth = 2
o.pumheight = 10
o.relativenumber = false
o.scrolloff = 8
o.shiftwidth = 2
o.showtabline = 2
o.signcolumn = "yes"
o.smartcase = true
o.smarttab = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.textwidth = 300
o.timeoutlen = 300
o.undodir = "~/.cache/nvim.undodir"
o.undofile = true
o.updatetime = 200
o.wrap = false
o.winbar = "%=%m %F"
o.writebackup = false
