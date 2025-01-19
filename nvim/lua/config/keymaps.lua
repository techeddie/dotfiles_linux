-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function keymap(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local opts = { noremap = true, silent = true }

keymap("i", "jk", "<ESC>", opts) --exit insert mode
keymap("i", "kj", "<ESC>", opts) --exit insert mode
keymap("n", "<BS>", "<C-w>W") --switch to previous pane
keymap("n", "<C-S-Down>", ":resize -2<CR>", opts) --pane smaller horizontal keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts) --pane smaller vertical
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts) --pane bigger vertical
keymap("n", "<C-S-Up>", ":resize +2<CR>", opts) --pane bigger horizontal
keymap("n", "<C-k>", ":qall! <CR>") --force quit all buffers
keymap("n", "<C-s>", ":w!<CR><ESC>") --save current buffer
keymap("n", "<C-y>", ":redo <CR>") --redo change
keymap("n", "<C-z>", ":redo <CR>") --redo change
keymap("n", "<F3>", ":e! <CR>") --reread current buffer
keymap("n", "<M-0>", ":wincmd =<CR>", opts) --make panes equal size
keymap("n", "<M-=>", ":wincmd =<CR>", opts) --make panes equal size
keymap("n", "<M-g>", ":LazyGitCurrentFile<CR>") --lazygit
keymap("n", "<M-h>", ":split <CR>") --horizontal split
keymap("n", "<M-l>", ":Lf<CR>") --lf filemanager
keymap("n", "<M-v>", ":vsplit<CR>") --vertical split
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-r>", ":source % <CR>") --source current buffer
keymap("n", "<Tab>", "<C-w>w") --switch to next pane
keymap("n", "<leader>g", ":LazyGitCurrentFile<CR>") --lazygit
keymap("n", "<leader>h", "<C-w>h") --switch pane
keymap("n", "<leader>j", "<C-w>j") --switch pane
keymap("n", "<leader>k", "<C-w>k") --switch pane
keymap("n", "<leader>l", "<C-w>l") --switch pane
keymap("n", "<leader>q", ":<C-w>q<CR>") --quit current buffer
-- keymap("n", "<space>", "a<space><esc>", opts) --insert space in normal mode
keymap("n", "Y", "y$") --make y behave like the other capitals
keymap("v", ".", ":normal .<CR>") --repeat with dot in visual mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
-- keymap("v", "P", "}") --visual select paragraph
-- keymap("v", "d", '"xd') --do not yank to clip on delete action
-- keymap("n", "C", '"_C') --do not yank to system clipboard for c motions
-- keymap("n", "c", '"_c') --do not yank to system clipboard for c motions
--JUMP TO BUFFER WITH SPACEBAR
for i = 1, 6 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<C-W>w"
  keymap("n", lhs, rhs, { desc = "Move to windows " .. i })
end
