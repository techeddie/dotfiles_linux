return {
  "stevearc/aerial.nvim",
  opts = {
    layout = {
      max_width = { 40, 0.2 },
      width = nil,
      min_width = 25,
      default_direction = "right",
    },
    close_automatic_events = { "unfocus" },
    attach_mode = "global",
  },
  config = function(_, opts)
    require("aerial").setup(opts)

    vim.api.nvim_create_autocmd("BufWinEnter", {
      callback = function()
        local filetype = vim.bo.filetype
        local exclude = {
          "dashboard", "alpha", "startify", "neo-tree",
          "aerial", "lazy", "mason", "help", "qf", ""
        }
        for _, ft in ipairs(exclude) do
          if filetype == ft then return end
        end

        local ok, aerial = pcall(require, "aerial")
        if not ok then return end

        -- Kurz warten bis LSP Symbole geliefert hat
        vim.defer_fn(function()
          local count = aerial.num_symbols()
          if count and count > 0 then
            aerial.open({ focus = false })
          end
        end, 500)
      end,
    })
  end,
}
