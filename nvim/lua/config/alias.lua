local api = vim.api

-- ==========================================
-- MY CUSTOM COMMANDS
-- ==========================================

api.nvim_create_user_command("Gp", function()
    print(vim.fn.expand('%:p')) 
end, {})

api.nvim_create_user_command("I", function()
    vim.cmd("edit ~/.config/nvim/init.lua")
end, {})

api.nvim_create_user_command("K", function()
    vim.cmd("edit ~/.config/nvim/lua/config/keymaps.lua")
end, {})

local function reload_keymaps()
    vim.cmd("source ~/.config/nvim/lua/config/keymaps.lua")
    print("Keymaps reloaded")
end
api.nvim_create_user_command("KeymapsReload", reload_keymaps, {})
api.nvim_create_user_command("ReloadKeymaps", reload_keymaps, {})


-- ==========================================
-- OBSIDIAN BASH & POWERSHELL CODEBLOCKS
-- ==========================================

local function obsidian_bash()
    vim.cmd([[
        let a = ['', 'bash']
        silent! %s/```\zs/\=reverse(a)[0]/g
    ]])
end
api.nvim_create_user_command("BashBlock", obsidian_bash, {})

local function obsidian_powershell()
    vim.cmd([[
        let a = ['', 'powershell']
        silent! %s/```\zs/\=reverse(a)[0]/g
        silent! %s/\_s\+\(\n\s*```$\)/\1/g
    ]])
end
api.nvim_create_user_command("PowerShellBlock", obsidian_powershell, {})
api.nvim_create_user_command("PSBlock", obsidian_powershell, {})


-- ==========================================
-- NORMALIZE MARKDOWN HEADERS
-- ==========================================

local function normalize_markdown_headers()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    local min_level = 7
    local in_code_block = false

    -- 1. kleinstes header-level finden (code-blöcke ignorieren)
    for _, line in ipairs(lines) do
        -- schaltet um, wenn wir einen code-block betreten oder verlassen
        if string.match(line, "^%s*```") then
            in_code_block = not in_code_block
        end

        if not in_code_block then
            -- sucht nach rauten, erlaubt aber leerzeichen davor (^%s*)
            local match = string.match(line, "^%s*(#+)%s")
            if match then
                local level = #match
                if level < min_level then
                    min_level = level
                end
            end
        end
    end

    if min_level > 1 and min_level < 7 then
        local offset = min_level - 1
        in_code_block = false 
        
        for i, line in ipairs(lines) do
            if string.match(line, "^%s*```") then
                in_code_block = not in_code_block
            end

            if not in_code_block then
                local match = string.match(line, "^%s*(#+)%s")
                if match then
                    local new_level = #match - offset
                    local new_hashes = string.rep("#", new_level)
                    
                    lines[i] = string.gsub(line, "^(%s*)#+", "%1" .. new_hashes, 1)
                end
            end
        end
        
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
        print("Überschriften korrigiert (um " .. offset .. " Ebene(n) angehoben).")
    else
        local level_msg = (min_level == 7) and "keine gefunden" or min_level
        print("Keine Anpassung nötig (Kleinste gefundene Ebene: " .. level_msg .. ").")
    end
end

api.nvim_create_user_command("FixHeaders", normalize_markdown_headers, {})
api.nvim_create_user_command("MarkdownHeadersDecrease", normalize_markdown_headers, {})
api.nvim_create_user_command("DecreaseMarkdownHeaders", normalize_markdown_headers, {})
