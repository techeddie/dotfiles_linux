-- keymaps are automatically loaded on the VeryLazy event
-- default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- helper wrapper around nvim_set_keymap with noremap as default
local function keymap(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- ─── window navigation ────────────────────────────────────────────────────────
for i = 1, 6 do
	local lhs = "<leader>" .. i
	local rhs = i .. "<C-W>w"
	keymap("n", lhs, rhs, { desc = "Move to windows " .. i })
end

keymap("n", "<Tab>",   "<C-w>w",  { desc = "next pane" })
keymap("n", "<S-Tab>", "<C-w>W",  { desc = "previous pane" })
keymap("n", "<M-h>", "<C-w>h",    { desc = "left pane" })
keymap("n", "<M-l>", "<C-w>l",    { desc = "right pane" })
keymap("n", "<M-s-t>", "<C-w>x",  { desc = "swap panes" })
keymap("n", "q", "<C-w>c", { desc = "close current pane" })

-- ─── resize panes ─────────────────────────────────────────────────────────────

keymap("n", "<C-S-Up>",    ":resize +2<CR>",          { desc = "pane taller", silent = true })
keymap("n", "<C-S-Down>",  ":resize -2<CR>",           { desc = "pane shorter", silent = true })
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>",  { desc = "pane wider", silent = true })
keymap("n", "<C-S-Left>",  ":vertical resize -2<CR>",  { desc = "pane narrower", silent = true })

-- ─── buffer management ────────────────────────────────────────────────────────

keymap("n", "<S-Right>", ":bnext<CR>",     { desc = "next buffer", silent = true })
keymap("n", "<S-Left>",  ":bprevious<CR>", { desc = "previous buffer", silent = true })
keymap("n", "<leader>xk","<cmd>bd<CR>",    { desc = "delete current buffer" })
keymap("n", "<C-x>","<cmd>bd<CR>",    { desc = "delete current buffer" })
keymap("n", "<leader>q", ":<C-w>q<CR>",   { desc = "quit current pane" })

vim.keymap.set("n", "<C-l>", function()
  Snacks.picker.buffers()
end, { desc = "buffer picker" })


-- ─── lazy operations ──────────────────────────────────────────────────────────
-- vim.keymap.set("n", "<leader>nh",  function() Snacks.notifier.show_history()   end, { desc = "notification history" })

-- ─── file operations ──────────────────────────────────────────────────────────

keymap("n", "ss",    ":w!<CR><ESC>",   { desc = "save from normal mode" })
keymap("n", "<S-r>", ":source %<CR>",  { desc = "source current buffer" })
keymap("n", "<F3>",  ":e!<CR>",        { desc = "reload buffer from disk" })

-- ─── external tools ───────────────────────────────────────────────────────────

-- keymap("n", "<M-g>", ":LazyGit<CR>",      { desc = "open lazygit" })
-- keymap("n", "<M-l>", ":Lf<CR>",           { desc = "open lf filemanager" })
keymap("n", "<S-u>", ":UndotreeToggle | :UndotreeFocus<CR>", { desc = "toggle undotree" })
keymap("n", "<leader>m", "<cmd>Alpha<cr>",     { desc = "open alpha" })
-- keymap("n", "<leader>a", "<cmd>AerialToggle<cr>", { desc = "aerial toggle" })

-- ─── editing helpers ──────────────────────────────────────────────────────────

-- insert blank line below without entering insert mode
keymap("n", "<CR>",       ":a<CR><CR>.<CR>", { desc = "insert blank line below" })
keymap("n", "<leader>o",  ":a<CR><CR>.<CR>", { desc = "insert blank line below" })
keymap("n", "nl",         ":a<CR><CR>.<CR>", { desc = "insert blank line below" })

keymap("n", "<leader>rd",  ":redo<CR>",       { desc = "redo" })
keymap("n", "<leader><space>", "za",          { desc = "toggle fold" })
keymap("i", "<C-v>", "<C-r>+",                { desc = "paste from clipboard in insert mode" })

-- paste below current line (always on new line)
-- keymap("n", "p", ":pu<CR>", { desc = "paste below current line" })

-- squeeze multiple consecutive blank lines into one
keymap("n", "<leader>ds", [[:%s/^\s*$\n\(^\s*$\n\)\+/\r/e<cr>]],
  { desc = "squeeze blank lines" })

-- indent all markdown heading lines
keymap("n", "<leader>#", [[:g/^#/normal >><CR>]], { desc = "indent all # lines" })

-- ─── escape shortcuts ─────────────────────────────────────────────────────────

keymap("i", "jk", "<ESC>", { desc = "exit insert mode" })
keymap("i", "kj", "<ESC>", { desc = "exit insert mode" })

-- ─── word wrap navigation ─────────────────────────────────────────────────────

keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- ─── clipboard / register behaviour ──────────────────────────────────────────

-- c motions: do not overwrite system clipboard
keymap("n", "c",  '"_c', { desc = "change without yanking" })
keymap("n", "C",  '"_C', { desc = "change to eol without yanking" })

-- d/x motions: route deleted text to register x (not system clipboard)
-- use "xp to paste deleted text if needed
keymap("n", "d", '"xd', { desc = "delete to register x" })
keymap("v", "d", '"xd', { desc = "delete to register x" })

-- paste in visual: use black hole so deleted selection is not yanked
keymap("v", "p", '"_dp', { desc = "paste without overwriting clipboard" })

-- ─── visual mode ──────────────────────────────────────────────────────────────

keymap("v", ".", ":normal .<CR>",          { desc = "repeat last action" })
keymap("v", "<", "<gv",                    { desc = "decrease indent" })
keymap("v", ">", ">gv",                    { desc = "increase indent" })
keymap("v", "<a-j>", ":m .+1<cr>==",      { desc = "move selection down" })
keymap("v", "<a-k>", ":m .-2<cr>==",      { desc = "move selection up" })

keymap("x", "J", ":move '>+1<CR>gv-gv",   { desc = "move line down" })
keymap("x", "K", ":move '<-2<CR>gv-gv",   { desc = "move line up" })
keymap("x", "<leader>s",  ":sort<CR>",    { desc = "sort selected lines" })
keymap("x", "<leader>S",  ":sort!<CR>",   { desc = "sort selected lines (reverse)" })

-- ─── indentation helpers (visual) ────────────────────────────────────────────

-- helper: apply substitution on visual selection then exit
local function visual_sub(pattern, replacement)
  vim.cmd("'<,'>s/" .. pattern .. "/" .. replacement .. "/")
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false
  )
end

vim.keymap.set("v", "<leader>>",  function() visual_sub("^", "  ")    end, { desc = "indent 2 spaces" })
vim.keymap.set("v", "<leader><",  function() visual_sub("^  ", "")    end, { desc = "unindent 2 spaces" })
vim.keymap.set("v", "<leader>4>", function() visual_sub("^", "    ")  end, { desc = "indent 4 spaces" })
vim.keymap.set("v", "<leader>4<", function() visual_sub("^    ", "")  end, { desc = "unindent 4 spaces" })
vim.keymap.set("v", "<leader>t>", function() visual_sub("^", "\\t")   end, { desc = "indent with tab" })
vim.keymap.set("v", "<leader>t<", function() visual_sub("^\\t", "")   end, { desc = "unindent tab" })

-- ─── script runner ────────────────────────────────────────────────────────────
--
vim.keymap.set("n", "<M-F5>", function()
  local file = vim.fn.expand("%:p")
  local runners = {
    sh         = "bash",
    bash       = "bash",
    python     = "python3",
    javascript = "node",
  }
  local runner = runners[vim.bo.filetype] or "bash"

  -- close existing terminal splits before opening new one
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].buftype == "terminal" then
      vim.api.nvim_win_close(win, true)
    end
  end

  vim.cmd("split | terminal " .. runner .. " " .. file)
  vim.cmd("wincmd p")
end, { desc = "run current file" })

