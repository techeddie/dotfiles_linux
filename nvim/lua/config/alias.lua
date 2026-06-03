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

    " OBSIDIAN BASH CODEBLOCKS
    function ObsidianBash()
         :let a = ['', 'bash']
         :%s/```\zs/\=reverse(a)[0]/g
    endfunction

    command! BashBlock execute ObsidianBash()

    " OBSIDIAN POWERSHELL CODEBLOCKS
    function! ObsidianPowerShell()
        let a = ['', 'powershell']
        silent! %s/```\zs/\=reverse(a)[0]/g
        
        silent! %s/\_s\+\(\n\s*```$\)/\1/g
    endfunction

    command! PowerShellBlock call ObsidianPowerShell()
    command! PSBlock call ObsidianPowerShell()

    function! NormalizeMarkdownHeaders()
    let l:min_level = 7

    " DECREASE MARKDOWN HEADERS
    for l:line in getline(1, '$')
        let l:match = matchstr(l:line, '^#\+\ze\s')
        if !empty(l:match)
            let l:level = len(l:match)
            if l:level < l:min_level
                let l:min_level = l:level
            endif
        endif
    endfor

    if l:min_level > 1 && l:min_level < 7
        let l:offset = l:min_level - 1
        " Ersetze die Rauten durch die (alte Anzahl - Offset)
        execute 'silent! %s/^#\+\ze\s/\=repeat("#", len(submatch(0)) - ' . l:offset . ')/g'
        echo "Ueberschriften korrigiert (um " . l:offset . " Ebene(n) angehoben)."
    else
        echo "Keine Anpassung noetig."
    endif
    endfunction

    command! FixHeaders call NormalizeMarkdownHeaders()
    command! MarkdownHeadersDecrease call NormalizeMarkdownHeaders()
    command! DecreaseMarkdownHeaders call NormalizeMarkdownHeaders()

]]

    -- command! P execute "e ~/.config/nvim/lua/config/plugins.lua"
    -- command! PluginsReload execute "source ~/.config/nvim/lua/config/plugins.lua"  | echo "Plugins reloaded"
    -- command! S execute "e ~/.config/nvim/lua/config/settings.lua"
    -- command! SettingsReload execute "source ~/.config/nvim/lua/config/settings.lua" | echo "Settings reloaded"
    -- command! T execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
    -- command! TS execute "e ~/.config/nvim/lua/plugconfig/telescope.lua"
