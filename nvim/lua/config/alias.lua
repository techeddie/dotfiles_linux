-- AUTOCOMMANDS
-- local M = {}
-- function M.autocmd(event, triggers, operations)
--   local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
--  vim.cmd(cmd)
-- end

local cmd = vim.cmd

-- MY ALIASES
cmd [[
  "MY CUSTOM COMMANDS
    command! Gp execute ":echo expand('%:p')"
    command! I execute "e ~/.config/nvim/init.lua"
    command! K execute "e ~/.config/nvim/lua/config/keymaps.lua"
    command! KeymapsReload execute "source ~/.config/nvim/lua/config/keymaps.lua" | echo "Keymaps reloaded"
    command! ReloadKeymaps execute "source ~/.config/nvim/lua/config/keymaps.lua" | echo "Keymaps reloaded"

    function ObsidianBash()
         :let a = ['', 'bash']
         :%s/```\zs/\=reverse(a)[0]/g
    endfunction
    command! BashBlock execute ObsidianBash()

    function ObsidianPowerShell()
         :let a = ['', 'powershell']
         :%s/```\zs/\=reverse(a)[0]/g
    endfunction
    command! PowershellBlock execute ObsidianPowerShell()
    command! PSBlock execute ObsidianPowerShell()

]]

    -- command! P execute "e ~/.config/nvim/lua/config/plugins.lua"
    -- command! PluginsReload execute "source ~/.config/nvim/lua/config/plugins.lua"  | echo "Plugins reloaded"
    -- command! S execute "e ~/.config/nvim/lua/config/settings.lua"
    -- command! SettingsReload execute "source ~/.config/nvim/lua/config/settings.lua" | echo "Settings reloaded"
    -- command! T execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
    -- command! TS execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
