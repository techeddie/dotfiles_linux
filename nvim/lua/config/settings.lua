local g = vim.g --global vim
local a = vim.api --vim api

-- REMAP LEADER AND LOCAL LEADER TO <SPACE>
a.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "

-- OPTIONS
local options = {
  -- foldexpr = "nvim_treesitter#foldexpr()",
  -- foldmethod = "expr",
  -- guicursor= "a:blinkon100"
  --[[ listchars = 'trail:·,tab:→ ,extends:▸', ]]
  autoindent = false,
  backup = false,
  breakindent = true, -- testing
  cindent = true,
  clipboard = 'unnamedplus',
  cmdheight = 0,
  completeopt = "menuone,noselect", -- testing
  cursorline = true,
  expandtab = true,
  equalalways= true,
  guifont = "monospace:h17",
  hidden = true,
  history = 50,
  ignorecase = true,
  list = false,
  listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂',
  -- listchars = 'tab:→ ',
  mouse = "a",
  mouse = "",
  number = true,
  numberwidth = 2,
  pumheight = 10,
  relativenumber = true,
  scrolloff = 8,
  shiftwidth = 2,
  showtabline = 2,
  signcolumn = 'yes',
  smartcase = true,
  smarttab = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2,
  termguicolors = true,
  textwidth = 300,
  timeoutlen = 300,
  undodir = "/home/eddie/.cache/nvim.undodir",
  undofile = true,
  updatetime = 200,
  wrap = false,
  winbar = "%=%m %F",
  writebackup = false,
}
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- [[ HIGHLIGHT ON YANK ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.api.nvim_create_user_command(
  'NeovimFiles',
  function(input)
    vim.call('fzf#vim#files', '~/nvim', input.bang)
  end,
  { bang = true, desc = 'search neovim folder' }
)
