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


Status:children_add(function(self)
	local h = self._current.hovered
	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)



-- -- Show the path of the currently hovered file in the header
-- function Header:cwd()
-- 	local max = self._area.w - self._right_width
-- 	if max <= 0 then
-- 		return ui.Span("")
-- 	end
--
-- 	local cwd = ya.readable_path(tostring(self._tab.current.cwd)) .. self:flags()
-- 	local left = ui.Line {
--     ui.Span(cwd):fg("blue"):bold(true),
--     ui.Span("/"):fg("blue"):bold(true),
--     ui.Span(tostring(cx.active.current.hovered.name)):fg("blue"):   bold(true),
--   }
--
--   return left
--
-- end


-- Show username and hostname in header
-- Header:children_add(function()
-- 	if ya.target_family() ~= "unix" then
-- 		return ui.Line {}
-- 	end
-- 	return ui.Line { ui.Span(ya.user_name() .. "@" .. ya.host_name()):fg("lightgreen"):bold(true), ui.Span(":") }
-- end, 500, Header.LEFT)


-- Show symlink path in status bar
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
