-- Highlight color codes (hex, rgb, etc.) inline with their actual color
return {
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPost",
    config = function()
      require("colorizer").setup()
    end,
  },
}
