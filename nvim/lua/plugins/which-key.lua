return {
	"folke/which-key.nvim",
	lazy = false,
	opts = {
		preset = "helix",
		-- Only show popup for <leader>; native g-mappings (gcc etc.) pass through
		triggers = {
			{ "<leader>", mode = { "n", "v" } },
			{ "]", mode = "n" },
			{ "[", mode = "n" },
			{ "z", mode = "n" },
			{ "h", mode = "n" },
		},
	},
}
