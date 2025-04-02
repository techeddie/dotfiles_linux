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
			{ "<C-h>", function() Snacks.picker.recent() end, desc = "Recent", },
      { "<C-f>", function() Snacks.picker.lines() end, desc = "buffer lines", },
		}
	end,
}
