--- @sync entry

return {
	entry = function()
		if cx.tabs.idx >= #cx.tabs then
			ya.emit("tab_create", { current = true })
		else
			ya.emit("tab_switch", { 1, relative = true })
		end
	end,
}
