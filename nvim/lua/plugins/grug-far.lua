return {
	"MagicDuck/grug-far.nvim",
	keys = {
		{
			"<leader>GP",
			function()
				require("grug-far").open()
			end,
			desc = "Find & Replace (project)",
		},
		{
			"<leader>GR",
			function()
				local path = vim.fn.expand("%:p")
				require("grug-far").open({
					prefills = {
						paths = path,
						flags = "--fixed-strings",
					},
				})
			end,
			desc = "Find & Replace (current file)",
		}
	},
	opts = {
		rgPath = "rg",
		extraArgs = "--smart-case",
		keymaps = {
			replace = { n = "<C-r>" },
			replace = { n = "<C-h>" },
			-- syncAll = { n = "<C-h>" },
		},
	},
}
