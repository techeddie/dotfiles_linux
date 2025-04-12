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

--QUIT BUFFER
for i = 1, 6 do
	local lhs = "q" .. i
	local rhs = i .. "<C-W>q"
	keymap("n", lhs, rhs, { desc = "quit buffer number ..." .. i })
end

-- KEYMAPS
-- keymap("n", "<C-h>", ":lua Snacks.dashboard.pick('') <CR>") --history
keymap("n", "nl", ":a<CR><CR>.<CR>") --insert a newline without entering in insert mode, vim
keymap("n", "<CR>", ":a<CR><CR>.<CR>") --insert a newline without entering in insert mode, vim
keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>hs", ":split <CR>") --horizontal split
keymap("n", "<leader>vs", ":vsplit <CR>") --horizontal split
keymap("n", "<leader>q", ":<C-w>q<CR>", { desc = "Quit current pane" }) --quit current buffer
keymap("n", "<leader>qp", ":<C-w>q<CR>", { desc = "Quit current pane" }) --quit current buffer
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
-- keymap("n", "<S-u>", ":UndotreeToggle | :UndotreeFocus <CR>") --toggle history tree
keymap("n", "<Tab>", "<C-w>w") --switch to next pane
keymap("n", "<c-q>", ":bd <CR>") --buffer delete
keymap("n", "<leader>j", "<C-w>j") --switch pane
keymap("n", "<leader>k", "<C-w>k") --switch pane
keymap("n", "<leader>o", ":a<CR><CR>.<CR>") -- Insert a newline without entering in insert mode
keymap("n", "<leader>u", "gUU") --make uppercase
keymap("n", "<leader>z", "za") --toggle fold
keymap("n", "C", '"_C') --do not yank to system clipboard for c motions
keymap("n", "c", '"_c') --do not yank to system clipboard for c motions
keymap("n", "<leader>m", "<cmd>Startify<cr>", { desc = "Startify" }) --open startpage
keymap("n", "d", '"xd') --do not yank to clip on delete action
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("v", ".", ":normal .<CR>") --repeat with dot in visual mode
keymap("v", "P", "}") --visual select paragraph
keymap("v", "d", '"xd') --do not yank to clip on delete action


-- vim.keymap.set("n", "<C-f>", function()
--   Snacks.picker.lines()
-- end, { desc = "Buffer lines" })

keymap("n", "<C-l>", ":lua Snacks.picker.buffers() <CR>") --show me all bufers
keymap("n", "<C-e>", ":lua Snacks.explorer() <CR>") --show me snack explorer
-- keymap("n", "<C-f>", ":lua Snacks.picker.lines() <CR>") --show me snack explorer
keymap("n", "<S-u>", ":lua Snacks.picker.undo() <CR>") --show me undo history
keymap("n", "<M-g>", ":LazyGit<CR>") --lazygit
keymap("n", "ss", ":w!<CR><ESC>") --save from normal mode
-- keymap("n", "<C-h>", ":lua Snacks.picker.recent() <CR>") --show me recent files

-- RESIZE PANES
keymap("n", "<C-S-Down>", ":resize -2<CR>", opts) --pane smaller horizontal
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts) --pane smaller vertical
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts) --pane bigger vertical
keymap("n", "<C-S-Up>", ":resize +2<CR>", opts) --pane bigger horizontal

-- VISUAL --
keymap("v", "<", "<gv", opts) -- Stay in indent mode
keymap("v", ">", ">gv", opts) -- Stay in indent mode
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
-- Visual Block --   -- Move text up and down
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- vim.keymap.set("n", "<C-f>", function()
--   Snacks.picker.lines()
-- end, { desc = "Buffer lines" })

-- lazygit
-- if vim.fn.executable("lazygit") == 1 then
--   map("n", "<leader>gg", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" })
--   map("n", "<leader>gG", function() Snacks.lazygit() end, { desc = "Lazygit (cwd)" })
--   map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Current File History" })
--   map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log" })
--   map("n", "<leader>gL", function() Snacks.picker.git_log() end, { desc = "Git Log (cwd)" })
-- end
-- map("n", "<leader>gb", function() Snacks.picker.git_log_line() end, { desc = "Git Blame Line" })
-- map({ "n", "x" }, "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse (open)" })
-- map({"n", "x" }, "<leader>gY", function()
--   Snacks.gitbrowse({ open = function(url) vim.fn.setreg("+", url) end, notify = false })
-- end, { desc = "Git Browse (copy)" })
--
