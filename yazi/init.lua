-- https://github.com/yazi-rs/plugins/tree/main/full-border.yazi
-- show symlink in status bar
require("full-border"):setup()

require("zoxide"):setup({
	update_db = true,
})

-- sync yank clipboard across instances
require("session"):setup {
	sync_yanked = true,
}

-- git plugin
require("git"):setup()


-- fuzzy find and grep in yazi using ripgrep and fzf. this plugin provides an interactive search interface that allows you to search file contents and open results directly in your configured editor.
-- https://github.com/XYenon/yafg.yazi
require("yafg"):setup({
  editor = "nvim",                    -- Editor command (default: "hx")
  args = {},            -- Additional editor arguments (default: {})
  file_arg_format = "+{row} {file}",  -- File argument format (default: "{file}:{row}:{col}")
})

Status:children_add(function(self)
	local h = self._current.hovered
	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)

-- show symlink path in status bar
function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line {}
	end

  local linked = ""
 	if h.link_to ~= nil then
 		linked = " -> " .. tostring(h.link_to)
 	end
 	return ui.Line(" " .. h.name .. linked)
end


-- https://yazi-rs.github.io/docs/configuration/yazi/#manager.linemode
function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%d.%m.%Y", time)
	else
	time = os.date("%d.%m.%Y", time)
	end

	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "", time)
end

-- projects
-- https://github.com/MasouShizuka/projects.yazi
require("projects"):setup({
    event = {
        save = {
            enable = true,
            name = "project-saved",
        },
        load = {
            enable = true,
            name = "project-loaded",
        },
        delete = {
            enable = true,
            name = "project-deleted",
        },
        delete_all = {
            enable = true,
            name = "project-deleted-all",
        },
        merge = {
            enable = true,
            name = "project-merged",
        },
    },
    save = {
        method = "yazi", -- yazi | lua
        yazi_load_event = "@projects-load", -- event name when loading projects in `yazi` method
        lua_save_path = "", -- path of saved file in `lua` method, comment out or assign explicitly
                            -- default value:
                            -- windows: "%APPDATA%/yazi/state/projects.json"
                            -- unix: "~/.local/state/yazi/projects.json"
    },
    last = {
        update_after_save = true,
        update_after_load = true,
        update_before_quit = false,
        load_after_start = false,
    },
    merge = {
        event = "projects-merge",
        quit_after_merge = false,
    },
    notify = {
        enable = true,
        title = "Projects",
        timeout = 3,
        level = "info",
    },
})
