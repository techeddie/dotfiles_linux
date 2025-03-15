return {
  "mhinz/vim-startify",
  config = function()
    local g = vim.g
    g.startify_custom_header = {}

    g.startify_bookmarks = {
      { ac = "~/.config/alacritty/alacritty.toml" }, -- alacritty config
      { i = "~/.config/nvim/init.lua" }, -- neovim init file
      { ic = "~/.config/i3/config" }, -- i3 config file
      { lc = "~/Nextcloud/LINUX/LINUX_COMMANDS.sh" }, -- linux knowledge base
      { lf = "~/config/lf/lfrc" }, -- lf file manager config
      { m = "~/.config/nvim/lua/config/keymaps.lua" }, -- neovim keymap
      { rb = "~/scripts/restic_runBackup.sh" }, -- run remote backup
      { rtb = "~/scripts/runTimeshiftBackup.sh" }, -- run local backup
      { ns = "~/.config/nvim/lua/eddie/settings.lua" }, -- neovim default settings
      { tc = "~/.tmux.conf" }, -- tmux config file
      { zc = "~/.zshrc" }, -- zsh config
    }

    g.startify_session_autoload = 0 --restart session on startup
    g.startify_change_to_vcs_root = 1
    g.startify_enable_special = 1
    g.startify_session_dir = "/home/eddie/.cache/nvim/sessions"
    g.startify_files_number = 8
    g.startify_lists = {
      { type = "files", header = { "•   Files " } },
      { type = "bookmarks", header = { "•   Bookmarks" } },
    }
  end,
}
