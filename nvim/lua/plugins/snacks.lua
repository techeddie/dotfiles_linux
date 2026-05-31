-- Collection of utilities: fuzzy picker, notifier, dashboard, scratch buffers, and more
return {
  "folke/snacks.nvim",
  keys = {
    { "<C-h>",        function() Snacks.picker.recent() end,                    desc = "Recent"          },
    { "<leader>ll",   function() Snacks.picker.lines() end,                     desc = "Buffer Lines"    },
    { "<leader>e",    function() Snacks.explorer({ cwd = vim.uv.cwd() }) end,   desc = "Explorer (cwd)" },
    { "<leader>E",    function() Snacks.explorer() end,                         desc = "Explorer (Root)" },
  }
  -- ,
  -- config = function()
  --   vim.api.nvim_create_autocmd("VimEnter", {
  --     callback = function()
  --       if vim.fn.argc() == 0 then
  --         Snacks.picker.recent()
  --       end
  --     end,
  --   })
  -- end,
}
