--STARTIFY
local g = vim.g

g.startify_custom_header = {}
-- '                                       ██            ',
-- '                                      ░░             ',
-- '    ███████   █████   ██████  ██    ██ ██ ██████████ ',
-- '   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██',
-- '    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██',
-- '    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██',
-- '    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██',
-- '   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░ ',
-- }
--
g.startify_bookmarks = {
       {ac  = '~/.config/alacritty/alacritty.yml'},     -- alacritty config 
       {i   = '~/.config/nvim/init.lua'},               -- neovim init file
       {ic  = '~/.config/i3/config'},                   -- i3 config file
       {lc  = '~/Nextcloud/LINUX/LINUX_COMMANDS.sh'},   -- linux knowledge base
       {b   = '~/Nextcloud/LINUX/BASHING/BASHING.sh'},            -- TJ DeVries kick starter 
       {lf  = '~/config/lf/lfrc'},                      -- lf file manager config
       {m   = '~/.config/nvim/lua/eddie/keymaps.lua'},  -- neovim keymap 
       {p   = '~/.config/nvim/lua/eddie/plugins.lua'},  -- neovim plugins 
       {rb  = '~/scripts/restic_runBackup.sh'},                -- run remote backup
       {rtb = '~/scripts/runTimeshiftBackup.sh'},       -- run local backup
       {ns  = '~/.config/nvim/lua/eddie/settings.lua'}, -- neovim default settings
       {tc  = '~/.tmux.conf'},                          -- tmux config file
       {v   = '~/gitREPO/dotfiles_linux/vifm/vifmrc'},  -- vifm file manager config 
       {zc  = '~/.zshrc'},                              -- zsh config 
}

local user_bookmarks = vim.g.startup_bookmarks
g.startify_session_autoload = 0  --restart session on startup
g.startify_change_to_vcs_root = 1
g.startify_enable_special = 1
g.startify_session_dir = '/home/eddie/.cache/nvim/sessions'
g.startify_files_number = 8
g.startify_lists = {
  { type = 'files', header = { "•   Files " } },
  { type = 'bookmarks', header = { '•   Bookmarks' } },
}
