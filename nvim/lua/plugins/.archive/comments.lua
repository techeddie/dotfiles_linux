return {
	-- Better comment handling
	{ "nvim-mini/mini.comment", enabled = false },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				-- Enable indent for comment lines
				pre_hook = function(ctx)
					-- For maintaining indentation
					return nil
				end,
			})
		end,
	},

	-- Alternative: vim-indent-object for better indentation
	{
		"michaeljsmith/vim-indent-object",
		event = "VeryLazy",
	},
}
