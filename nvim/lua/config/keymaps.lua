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
-- keymap("n", "<C-S-k>", ":qall! <CR>", opts)
-- keymap("n", "<C-h>", ":lua Snacks.dashboard.pick('') <CR>") --history
-- keymap("n", "<S-u>", ":UndotreeToggle | :UndotreeFocus <CR>") --toggle history tree
-- keymap("n", "<leader>j", "<C-w>j") --switch pane
-- keymap("n", "<leader>k", "<C-w>k") --switch pane
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", {desc = "Search and Replace box"})
keymap("n", "<C-S-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts) --pane smaller vertical
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts) --pane bigger vertical
keymap("n", "<C-S-Up>", ":resize +2<CR>", opts) --pane bigger horizontal
keymap("n", "<C-l>", ":lua Snacks.picker.buffers() <CR>") --show me all bufers
keymap("n", "<C-r>", ":source % <CR>") --source current buffer
keymap("n", "<C-y>", ":redo <CR>") --redo change
keymap("n", "<C-z>", ":redo <CR>") --redo change
keymap("n", "<CR>", ":a<CR><CR>.<CR>") --insert a newline without entering in insert mode, vim
keymap("n", "<F3>", ":e! <CR>") --reread current buffer
keymap("n", "<M-g>", ":LazyGit<CR>") --lazygit
keymap("n", "<M-h>", ":split <CR>") --horizontal split
keymap("n", "<M-l>", ":Lf<CR>") --lf filemanager
keymap("n", "<M-r>", ":SearchBoxReplace<CR>")
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
keymap("n", "<c-q>", "<C-w>q<CR>", opts)
keymap("n", "<leader>#", [[:g/^#/normal >><CR>]], { desc = "Indent all # lines" })
keymap("n", "<leader>>#", [[:g/^#/normal >><CR>]], { desc = "Indent all # lines" })
keymap("n", "<leader>hs", ":split <CR>") --horizontal split
keymap("n", "<leader>m", "<cmd>Startify<cr>", { desc = "Startify" }) --open startpage
keymap("n", "<leader>o", ":a<CR><CR>.<CR>") -- Insert a newline without entering in insert mode
keymap("n", "<leader>q", ":<C-w>q<CR>", { desc = "Quit current pane" }) --close current pane
keymap("n", "<leader>tf", "za") --toggle fold
keymap("n", "<leader>u", "gUU") --make uppercase
keymap("n", "<leader>vs", ":vsplit <CR>") --vertical split
keymap("n", "C", '"_C') --do not yank to system clipboard for c motions
keymap("n", "c", '"_c') --do not yank to system clipboard for c motions
keymap("n", "d", '"xd') --do not yank to clip on delete action
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- Remap for dealing with word wrap
keymap("n", "nl", ":a<CR><CR>.<CR>") --insert a newline without entering in insert mode, vim
keymap("n", "p", ':pu<CR>') --paste below current line
keymap("n", "ss", ":w!<CR><ESC>") --save from normal mode
keymap('n', '<leader>ds', [[:%s/^\s*$\n\(^\s*$\n\)\+/\r/e<cr>]], { desc = "squeeze multiple blank lines into one" })

-- keymap("n", "<C-e>", ":lua Snacks.explorer() <CR>") --show me snack explorer
-- keymap("n", "<C-f>", ":lua Snacks.picker.lines() <CR>") --show me snack explorer
-- keymap("n", "<S-u>", ":lua Snacks.picker.undo() <CR>") --show me undo history
-- keymap("n", "<C-h>", ":lua Snacks.picker.recent() <CR>") --show me recent files

-- RESIZE PANES
-- keymap("n", "<C-Down>", ":resize -4<CR>", opts) --pane smaller horizontal
-- keymap("n", "<C-Left>", ":vertical resize +4<CR>", opts) --pane smaller vertical
-- keymap("n", "<C-Right>", ":vertical resize -4<CR>", opts) --pane bigger vertical
-- keymap("n", "<C-Up>", ":resize +4<CR>", opts) --pane bigger horizontal

-- VISUAL --
keymap("v", ".", ":normal .<CR>") --repeat with dot in visual mode
keymap("v", "<", "<gv", { desc = "decrease indent" })
keymap("v", "<M-r>", ":SearchBoxReplace<CR>",{desc = "Search and Replace box"})
keymap("v", "<a-j>", ":m .+1<cr>==", { desc = "move up" })
keymap("v", "<a-k>", ":m .-2<cr>==", { desc = "move down"})
keymap("v", ">", ">gv", { desc = "increase indent" })
keymap("v", "d", '"xd') --do not yank to clip on delete action
keymap("v", "d", '"xd') --do not yank to clip on delete action
keymap("v", "p", '"_dp', { desc = "pase below current line" })
keymap("x", "<M-r>", ":SearchBoxReplace visual_mode=true<CR>")
keymap("x", "<leader>S", ":sort!<CR>", { desc = "sort selected lines (reverse)" })
keymap("x", "<leader>s", ":sort<cr>", { desc = "sort selected lines" })
keymap("x", "J", ":move '>+1<CR>gv-gv", { desc = "move line down" })
keymap("x", "K", ":move '<-2<CR>gv-gv", { desc = "move line up" })


Snacks.toggle.zoom():map("<leader>wm"):map("<leader>z")
Snacks.toggle.zen():map("<leader>Z"):map("Z")

-- custom keymaps for indenting comment lines
vim.keymap.set("v", "<leader>>", function()
  vim.cmd("'<,'>s/^/  /")  -- Add 2 spaces to beginning
  vim.cmd("nohlsearch")    -- Clear search highlighting
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Indent selected lines (including comments)" })

vim.keymap.set("v", "<leader><", function()
  vim.cmd("'<,'>s/^  //")  -- Remove 2 spaces from beginning  
  vim.cmd("nohlsearch")    -- Clear search highlighting
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Unindent selected lines (including comments)" })

-- alternative with 4 spaces
vim.keymap.set("v", "<leader>4>", function()
  vim.cmd("'<,'>s/^/    /")  -- Add 4 spaces
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Indent selected lines by 4 spaces" })

vim.keymap.set("v", "<leader>4<", function()
  vim.cmd("'<,'>s/^    //")  -- Remove 4 spaces
  vim.cmd("nohlsearch") 
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Unindent selected lines by 4 spaces" })

-- tab-based indentation
vim.keymap.set("v", "<leader>t>", function()
  vim.cmd("'<,'>s/^/\t/")  -- Add tab
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Indent selected lines with tab" })

vim.keymap.set("v", "<leader>t<", function()
  vim.cmd("'<,'>s/^\t//")  -- Remove tab
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Unindent selected lines (remove tab)" })


-- toggle lline wrapping
vim.keymap.set("n", "<leader>ww",
  function ()
    if vim.wo.wrap then
      vim.wo.wrap = false
      print("nowrap")
    else
      vim.wo.wrap = true
      print("wrap")
    end
  end,
  {desc = "Toggle line wrapping"})
