return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme tokyodark")
	end,
	keys = function()
		return {
			{ "<C-k>", ":qall! <CR>" },
      { "<C-g>", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" }},
      { "<C-f>", function() Snacks.picker.lines() end, { desc = "Buffer lines" }},
		}
	end,
}
