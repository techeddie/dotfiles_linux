-- https://github.com/yazi-rs/plugins/tree/main/full-border.yazi
require("full-border"):setup()
-- Show symlink in status bar

require("zoxide"):setup({
	update_db = true,
})

Status:children_add(function(self)
	local h = self._current.hovered
	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)
