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
       {ac  = '~/.config/alacritty/alacritty.toml'},      -- alacritty config 
       {i   = '~/.config/nvim/init.lua'},                -- neovim init file
       {ic  = '~/.config/i3/config'},                    -- i3 config file
       {lc  = '~/Nextcloud/LINUX/LINUX_COMMANDS.sh'},    -- linux knowledge base
       {lf  = '~/.config/lf/lfrc'},                      -- lf file manager config
       {m   = '~/.config/nvim/lua/config/keymaps.lua'},  -- neovim keymap 
       {p   = '~/.config/nvim/lua/config/plugins.lua'},  -- neovim plugins 
       {ns  = '~/.config/nvim/lua/config/settings.lua'}, -- neovim default settings
       {tc  = '~/.tmux.conf'},                           -- tmux config file
       {zc  = '~/.zshrc'},                               -- zsh config 
}

local user_bookmarks = vim.g.startup_bookmarks
g.startify_session_autoload = 0  --restart session on startup
g.startify_change_to_vcs_root = 1
g.startify_enable_special = 1
g.startify_session_dir = '/home/eddie/.cache/nvim/sessions'
g.startify_files_number = 15
g.startify_lists = {
  { type = 'files', header = { "•   Files " } },
  { type = 'bookmarks', header = { '•   Bookmarks' } },
}
