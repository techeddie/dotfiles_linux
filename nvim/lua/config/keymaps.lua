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

--JUMP TO BUFFER WITH SPACEBAR
for i = 1, 6 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<C-W>w"
  keymap("n", lhs, rhs, { desc = "Move to windows " .. i })
end

-- KEYMAPS
keymap("i", "jk", "<ESC>", opts) --exit insert mode
keymap("i", "kj", "<ESC>", opts) --exit insert mode
keymap("n", "<C-r>", ":source % <CR>") --source current buffer
keymap("n", "<C-y>", ":redo <CR>") --redo change
keymap("n", "<C-z>", ":redo <CR>") --redo change
keymap("n", "<F3>", ":e! <CR>") --reread current buffer
keymap("n", "<M-h>", ":split <CR>") --horizontal split
keymap("n", "<M-s-i>", "<C-w>x") --toggle panes
keymap("n", "<M-s-q>", ":<C-w>q<CR>") --quit current buffer
keymap("n", "<M-s-t>", "<C-w>x") --toggle panes
keymap("n", "<M-v>", ":vsplit<CR>") --vertical split
keymap("n", "<S-Tab>", "<C-w>W") --switch to previous pane
keymap("n", "<S-r>", ":source % <CR>") --source current buffer
keymap("n", "<Tab>", "<C-w>w") --switch to next pane
keymap("n", "<c-q>", ":bd <CR>") --buffer delete
keymap("n", "<leader>j", "<C-w>j") --switch pane
keymap("n", "<leader>k", "<C-w>k") --switch pane
keymap("n", "<leader>o", ":a<CR><CR>.<CR>") -- Insert a newline without entering in insert mode
keymap("n", "<leader>u", "gUU") --make uppercase
keymap("n", "C", '"_C') --do not yank to system clipboard for c motions
keymap("n", "c", '"_c') --do not yank to system clipboard for c motions
keymap("n", "d", '"xd') --do not yank to clip on delete action
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("v", ".", ":normal .<CR>") --repeat with dot in visual mode
keymap("v", "P", "}") --visual select paragraph
keymap("v", "d", '"xd') --do not yank to clip on delete action
