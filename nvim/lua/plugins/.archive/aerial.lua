return {
  "stevearc/aerial.nvim",
  opts = {
    open_automatic = false,
    layout = {
      max_width = { 40, 0.2 },
      width = nil,
      min_width = 25,
      default_direction = "right",
    },
    attach_mode = "global",
  },
  config = function(_, opts)
    require("aerial").setup(opts)

    local exclude = {
      dashboard = true, alpha = true, startify = true,
      ["neo-tree"] = true, aerial = true, lazy = true,
      mason = true, help = true, qf = true, [""] = true,
    }

    vim.api.nvim_create_autocmd("BufWinEnter", {
      callback = function()
        local ft = vim.bo.filetype
        if exclude[ft] then return end

        local ok, aerial = pcall(require, "aerial")
        if not ok then return end

        vim.defer_fn(function()
          local count = aerial.num_symbols()
          if count and count > 0 then
            aerial.open({ focus = false })
          else
            aerial.close()
          end
        end, 300)
      end,
    })
  end,
}
