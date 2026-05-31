return {
  -- Disable Snacks dashboard
  {
    "folke/snacks.nvim",
    opts = { dashboard = { enabled = false } },
  },

  -- Override LazyVim's alpha snippet completely
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- This stops LazyVim's extras/editor/snacks_picker from touching alpha
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                                  __]],
        [[     ___     ___    ___   __  __ /\_\    ___ ___]],
        [[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
        [[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
        [[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", "<cmd>lua Snacks.dashboard.pick('files')<cr>"),
        dashboard.button("r", "  Recent Files", "<cmd>lua Snacks.dashboard.pick('oldfiles')<cr>"),
        dashboard.button("g", "  Find Text", "<cmd>lua Snacks.dashboard.pick('live_grep')<cr>"),
        dashboard.button("n", "  New File", "<cmd>ene <BAR> startinsert<cr>"),
        { type = "padding", val = 1 },
        dashboard.button("c", "⚙️  Neovim Config", "<cmd>e ~/.config/nvim/init.lua<cr>"),
        dashboard.button("h", "👑  Hyprland Config", "<cmd>e ~/.config/hypr/hyprland.conf<cr>"),
        dashboard.button("d", "  Dotfiles", "<cmd>e ~/opt/git/dotfiles_linux/<cr>"),
        { type = "padding", val = 1 },
        dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
      }

      dashboard.section.footer.val = "have a good one, eddie"
      dashboard.section.header.opts.hl = "GruvboxYellow"
      dashboard.section.buttons.opts.hl = "GruvboxFg1"
      dashboard.section.footer.opts.hl = "GruvboxGray"

      dashboard.config.opts.noautocmd = true
      return dashboard
    end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.config)
    end,
  },
}
