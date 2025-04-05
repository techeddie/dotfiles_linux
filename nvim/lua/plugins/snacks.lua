return {
  "folke/snacks.nvim",
    keys = {
			{ "<C-h>", function() Snacks.picker.recent() end, desc = "Recent" },
      -- { "<C-f>", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
      { "<leader>ll", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
   }
}
