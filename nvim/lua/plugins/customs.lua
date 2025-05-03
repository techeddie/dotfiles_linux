return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme tokyodark")
	end,
	keys = function()
		return {
			{ "<C-k>", ":qall! <CR>" }, --close nvim
			{ "<C-k>", ":qall! <CR>" }, --close nvim
      { "<leader>h", "<C-w>h" }, --switch to next pane
      { "<leader>j", "<C-w>j" }, --switch to next pane
      { "<leader>k", "<C-w>k" }, --switch to next pane
      { "<leader>l", "<C-w>l" }, --switch to next pane
			{ "<leader><space>", "za" }, --fold under cursor
			{ "<leader>nn", ":a<CR><CR>.<CR>" }, --insert a newline without entering in insert mode
      { "<C-g>", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" }}, --lazygit
      { "<C-f>", function() Snacks.picker.lines() end, { desc = "Buffer lines" }}, --find text in current file via bufferline
		}
	end,
}
