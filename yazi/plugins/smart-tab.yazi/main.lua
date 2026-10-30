--- @sync entry

local M = { cycle = true }

function M:setup(opts)
	if opts and opts.cycle ~= nil then
		M.cycle = opts.cycle
	end
end

M.entry = function()
	if cx.tabs.idx < #cx.tabs then
		ya.emit("tab_switch", { 1, relative = true })
	elseif M.cycle and #cx.tabs >= 9 then
		ya.emit("tab_switch", { 0 })
	else
		ya.emit("tab_create", { current = true })
	end
end

return M
