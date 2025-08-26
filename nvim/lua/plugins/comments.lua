-- Add to ~/.config/nvim/lua/plugins/comments.lua

return {
  -- Better comment handling
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
