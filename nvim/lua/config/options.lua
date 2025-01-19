-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  number = true,
  numberwidth = 2,
  pumheight = 10,
  relativenumber = false,
  undodir = "/home/eddie/.cache/nvim.undodir",
  undofile = true,
  updatetime = 200,
  wrap = false,
}
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end
