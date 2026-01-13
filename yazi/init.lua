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
