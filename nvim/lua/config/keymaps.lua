local function keymap(mode, lhs, rhs, opts)
local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
local opts = { noremap = true, silent = true }

--BUFFER
  keymap("i", "jk", "<ESC>", opts) --exit insert mode
  keymap("n", "<space>", "a<space><esc>", opts) --insert space in normal mode
  keymap("i", "kj", "<ESC>", opts) --exit insert mode
  keymap("n", "+", ":") --open insert mode from normal mode
  keymap("n", "<BS>", "<C-w>W") --switch to previous pane
  keymap("n", "<C-Down>", "<C-e>") --scroll down
  keymap("n", "<C-f>", ":BLines <CR>") --fuzzy find current file
  keymap("n", "<C-k>", ":qall! <CR>") --force quit all buffers
  keymap("n", "<C-l>", ":BuffergatorOpen <CR>") --buffer list
  keymap("n", "<C-r>", ":source % <CR>") --source current buffer
  keymap("n", "<C-s>", ":w!<CR><ESC>") --save current buffer
  keymap("n", "<C-y>", ":redo <CR>") --redo change
  keymap("n", "<C-z>", ":redo <CR>") --redo change
  -- keymap("n", "<CR>", ":a<CR><CR>.<CR>") -- Insert a newline without entering in insert mode
  keymap("n", "<leader>o", ":a<CR><CR>.<CR>") -- Insert a newline without entering in insert mode
  keymap("n", "<F3>", ":e! <CR>") --reread current buffer
  keymap("n", "<F6>", ":K<CR>") --open keymap config file
  keymap("n", "<F7>", ":I<CR>") --open init config file
  keymap("n", "<F8>", ":P<CR>") --open plugins config file
  keymap("n", "<M-3>", ":SidebarNvimToggle<CR>", opts)
  keymap("n", "<M-4>", ":BuffergatorOpen<CR>", opts)
  keymap("n", "<M-b>", ":BuffergatorOpen<CR>", opts)
  keymap("n", "<M-h>", ":split <CR>") --horizontal split
  keymap("n", "<M-k>", ":K<CR>") --open plugins config file
  keymap("n", "<M-o>", "<C-o>") --jump to last location
  keymap("n", "<M-p>", ":P<CR>") --open plugins config file
  keymap("n", "<M-q>", ":<C-w>q<CR>") --quit current buffer
  keymap("n", "<M-s-i>", "<C-w>x") --toggle panes
  keymap("n", "<M-s-q>", ":<C-w>q<CR>") --quit current buffer
  keymap("n", "<M-s-t>", "<C-w>x") --toggle panes
  keymap("n", "<M-t>", ":tabnew <CR>") --open new tab
  keymap("n", "<M-v>", ":vsplit<CR>") --vertical split
  keymap("n", "<S-Left>", ":bnext<CR>", opts)
  keymap("n", "<S-Left>", ":bprevious<CR>", opts)
  keymap("n", "<S-Right>", ":bnext<CR>", opts)
  keymap("n", "<S-Tab>", "<C-w>W") --switch to previous pane
  keymap("n", "<S-h>", ":bprevious<CR>", opts)
  keymap("n", "<S-l>", ":bnext<CR>", opts)
  keymap("n", "<S-r>", ":source % <CR>") --source current buffer
  keymap("n", "<Tab>", "<C-w>w") --switch to next pane
  keymap("n", "<c-q>", ":bd <CR>") --buffer delete
  keymap("n", "<leader><space>", ":Buffers<CR>", opts)
  keymap("n", "<leader>b", ":SidebarNvimToggle<CR>", opts)
  keymap("n", "<leader>bb", ":lua require('gitsigns').prev_hunk({wrap=false}) <CR>") --git show next hunk
  keymap("n", "<leader>gd", ":Gitsigns diffthis ~1<CR>") --git toggle light highlight
  keymap("n", "<leader>gp", ":echo expand('%:p')<CR>") --get file path
  keymap("n", "<leader>gtl", ":Gitsigns toggle_linehl<CR>") --git toggle light highlight
  keymap("n", "<leader>ghl", ":Gitsigns toggle_linehl<CR>") --git toggle light highlight
  keymap("n", "<leader>hl", ":Gitsigns toggle_linehl<CR>") --git toggle light highlight
  keymap("n", "<leader>h", "<C-w>h") --switch pane
  keymap("n", "<leader>j", "<C-w>j") --switch pane
  keymap("n", "<leader>k", "<C-w>k") --switch pane
  keymap("n", "<leader>l", "<C-w>l") --switch pane
  keymap("n", "<leader>n", "> <CR>") --indent current line to right
  keymap("n", "<leader>nn", ":lua require('gitsigns').next_hunk({wrap=false}) <CR>") --git show next hunk
  keymap("n", "<leader>nw", ":set nowrap<CR>") --wrap
  keymap("n", "<leader>o", ":a<CR><CR>.<CR>") --Insert a newline without entering in insert mode
  keymap("n", "<leader>q", ":<C-w>q<CR>") --quit current buffer
  keymap("n", "<leader>r", "<C-w>r") --switch to previous pane
  keymap("n", "<leader>t", ":terminal <CR>") --open new tab
  keymap("n", "<leader>tl", ":Gitsigns toggle_linehl<CR>") --git toggle light highlight
  keymap("n", "<leader>u", "gUU") --make uppercase
  keymap("n", "<leader>w", ":set wrap<CR>") --wrap
  keymap("n", "<leader>x", ":bd <CR>") --buffer delete
  keymap("n", "<leader>y", "Yp") --duplicate current line
  keymap("n", "=", ":") --enter column mode
  keymap("n", "Y", "y$") --make y behave like the other capitals
  keymap("n", "Z", "y$") --make z behave like the other capitals
  keymap("n", "[", ":cprevious<CR>", opts) --prev quickfix list item
  keymap("n", "]", ":cnext<CR>", opts) --next quickfix list item
  keymap("n", "d", '"xd') --do not yank to clip on delete action
  keymap("n", "gh", "<C-w>h") --switch pane
  keymap("n", "gj", "<C-w>j") --switch pane
  keymap("n", "gk", "<C-w>k") --switch pane
  keymap("n", "gl", "<C-w>l") --switch pane
  keymap("n", "nl", ':a<CR><CR>.<CR>') --insert a newline without entering in insert mode, vim
  keymap("n", "q", ":Bclose <CR>") --quit current buffer
  keymap("n", "ss", ":w!<CR><ESC>") --save from normal mode
  keymap("v", "+", ":") --open insert mode from visual mode
  keymap("v", ".", ":normal .<CR>") --repeat with dot in visual mode
  keymap("v", "<leader>n", "> <CR>") --indent visual selected lines to right
  keymap("v", "P", "}") --visual select paragraph
  keymap("v", "d", '"xd') --do not yank to clip on delete action
  keymap("n", "C", '"_C') --do not yank to system clipboard for c motions
  keymap("n", "c", '"_c') --do not yank to system clipboard for c motions
  keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true }) -- Remap for dealing with word wrap
  keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- Remap for dealing with word wrap

-- NAVIGATE BUFFERS
-- RESIZE PANES
  keymap("n", "<C-S-Down>", ":resize -2<CR>", opts) --pane smaller horizontal
  keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts) --pane smaller vertical
  keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts) --pane bigger vertical
  keymap("n", "<C-S-Up>", ":resize +2<CR>", opts) --pane bigger horizontal
  keymap("n", "<M-0>", ":wincmd =<CR>", opts) --make panes equal size
  keymap("n", "<M-=>", ":wincmd =<CR>", opts) --make panes equal size

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


--FILE MANAGEMENT
  keymap("n", "<C-h>", ":History<CR>") --nvimtree
  keymap("n", "<C-n>", ":NvimTreeFindFileToggle<CR>") --nvimtree
  keymap("n", "<F2>", ":Vifm<CR>") --vi filemanager
  keymap("n", "<M-1>", ":BuffergatorOpen<CR>") --nvimtree
  keymap("n", "<M-2>", ":UndotreeToggle | :UndotreeFocus <CR>") --toggle history tree
  keymap("n", "<M-f>", ":BLines<CR>") --fuzzy find current file
  keymap("n", "<M-l>", ":Lf<CR>") --lf filemanager
  keymap("n", "<M-m>", ":Startify <CR>") --welcome screen
  keymap("n", "<S-u>", ":UndotreeToggle | :UndotreeFocus <CR>") --toggle history tree
  keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>") --nvimtree
  keymap("n", "<leader>hs", ":set hlsearch <CR>") --no highlight
  keymap("n", "<leader>m", ":Alpha <CR>") --welcome screen
  keymap("n", "<leader>nf", ':NeovimFiles <CR>')
  keymap("n", "<leader>nh", ":nohlsearch <CR>") --no highlight
  keymap("n", "<leader>nh", ":set hlsearch <CR>") --no highlight
  keymap("n", "<leader>fn", ":FZF ~/gitREPO/dotfiles_linux/nvim/<CR>") --fzf find files in folder
  keymap("n", "<leader>fd", ":FZF ~/gitREPO/dotfiles_linux/nvim/<CR>") --fzf find files in folder
  keymap("n", "<leader>fc", ":FZF ~/.config/<CR>") --fzf find files in folder
  keymap("n", "<leader>fs", ":FZF ~/scripts/<CR>") --fzf find files in folder
  keymap("n", "<leader>fg", ":FZF ~/gitREPO/<CR>") --fzf find files in folder

--LAZYGIT
  keymap("n", "<leader>g", ":LazyGitCurrentFile<CR>") --lazygit
  keymap("n", "<M-g>", ":LazyGitCurrentFile<CR>") --lazygit

--GIT 
  keymap("n", "<M-c>", ":BCommits<CR>")

--SEARCH AND REPLACE
  -- keymap("n", "<C-f>", ":SearchBoxSimple<CR>")
  keymap("n", "<M-r>", ":SearchBoxReplace<CR>")

--JUMP TO BUFFER WITH SPACEBAR
  for i = 1, 6 do 
    local lhs = "<leader>" .. i
    local rhs = i .. "<C-W>w"
    keymap("n", lhs, rhs, {desc = "Move to windows " .. i})
  end

-- LOOK AND FEEL
  keymap("n", "<M-C>", ":Colors<CR>", {desc = "change theme"})
  keymap("n", "<M-c>", ":History:<CR>", {desc = "command history"})
  keymap("n", "<leader>c", ":Commands<CR>", {desc = "show me all commands"})
  keymap("n", "<leader>/", ":History/:<CR>", {desc = "search history"})
  keymap("n", "<leader>tp", ":TransparentToggle<CR>", {desc = "Toggle Transparent"})
