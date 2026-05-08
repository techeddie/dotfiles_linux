return {
  "folke/snacks.nvim",
    keys = {
      -- { "<C-f>", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
			{ "<C-h>", function() Snacks.picker.recent() end, desc = "Recent" },
      { "<leader>ll", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
      { "<leader>e", function() Snacks.explorer({ cwd = vim.uv.cwd() }) end, desc = "Explorer (cwd)" },
      { "<leader>E", function() Snacks.explorer() end, desc = "Explorer (Root Dir)" },
   }
}
