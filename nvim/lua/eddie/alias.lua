-- AUTOCOMMANDS
local M = {}
function M.autocmd(event, triggers, operations)
  local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
 vim.cmd(cmd)
end

local cmd = vim.cmd

-- MY ALIASES
cmd [[
  "MY CUSTOM COMMANDS
    command! BCommits execute ":Telescope git_bcommits sorting_strategy=ascending"
    command! C execute "e ~/.config/nvim/lua/eddie/settings.lua"
    command! CommandHistory execute ":Telescope command_history sorting_strategy=ascending"
    command! H execute ":Telescope command_history sorting_strategy=ascending"
    command! ConfigReload execute "source ~/.config/nvim/lua/eddie/settings.lua" | echo "Settings reloaded"
    command! Gp execute ":echo expand('%:p')"
    command! I execute "e ~/.config/nvim/init.lua"
    command! K execute "e ~/.config/nvim/lua/eddie/keymaps.lua"
    command! LC execute "e ~/Nextcloud/LINUX/LINUX_COMMANDS.sh"
    command! KeymapReload execute "source ~/.config/nvim/lua/eddie/keymaps.lua" | echo "Keymaps reloaded"
    command! M execute ":Maps"
    command! Mappings execute ":Maps"
    command! P execute "e ~/.config/nvim/lua/eddie/plugins.lua"
    command! PluginsReload execute "source ~/.config/nvim/lua/eddie/plugins.lua"  | echo "Plugins reloaded"
    command! S execute "e ~/.config/nvim/lua/eddie/settings.lua"
    command! SettingsReload execute "source ~/.config/nvim/lua/eddie/settings.lua" | echo "Settings reloaded"
    command! T execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
    command! TS execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
]]
