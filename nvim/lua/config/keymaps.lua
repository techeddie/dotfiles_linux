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
-- keymap("n", "<C-h>", ":lua Snacks.dashboard.pick('oldfiles') <CR>") --history
keymap("i", "jk", "<ESC>", opts)
-- keymap("n", "<C-S-k>", ":qall! <CR>", opts)
keymap("n", "<c-q>", "<C-w>q<CR>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("n", "<C-S-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts) --pane smaller vertical
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts) --pane bigger vertical
keymap("n", "<C-S-Up>", ":resize +2<CR>", opts) --pane bigger horizontal
keymap("n", "<C-r>", ":source % <CR>") --source current buffer
keymap("n", "<C-y>", ":redo <CR>") --redo change
keymap("n", "<C-z>", ":redo <CR>") --redo change
keymap("n", "<F3>", ":e! <CR>") --reread current buffer
keymap("n", "<M-h>", ":split <CR>") --horizontal split
keymap("n", "<M-l>", ":Lf<CR>") --lf filemanager
keymap("n", "<M-s-i>", "<C-w>x") --toggle panes
keymap("n", "<M-s-q>", ":<C-w>q<CR>") --quit current buffer
keymap("n", "<M-s-t>", "<C-w>x") --toggle panes
keymap("n", "<M-v>", ":vsplit<CR>") --vertical split
keymap("n", "<S-Left>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", "<C-w>W") --switch to previous pane
keymap("n", "<S-r>", ":source % <CR>") --source current buffer
keymap("n", "<S-u>", ":UndotreeToggle | :UndotreeFocus <CR>") --toggle history tree
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
keymap("n", "<M-g>", ":LazyGit<CR>") --lazygit
-- keys = {
--   { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
--   { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
--   { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
--   { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
--   { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
--   { icon = " ", key = "s", desc = "Restore Session", section = "session" },
--   { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
--   { icon = " ", key = "q", desc = "Quit", action = ":qa" },
-- },
