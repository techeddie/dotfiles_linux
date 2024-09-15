local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {"neovim alpha"}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files cwd=~/.config/<CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("ic", "  i3 config", ":e ~/.config/i3/config <CR>"),
	dashboard.button("lc", "  LINUX LINUX_COMMANDS", ":e ~/Nextcloud/LINUX/LINUX_COMMANDS.sh<CR>"),
	dashboard.button("zc", "  zsh config", ":e ~/.zshrc <CR>"),
	dashboard.button("yc", "  zsh config", ":e ~/.zshrc <CR>"),
	dashboard.button("ni", "  nvim init", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("ns", "  nvim settings", ":e ~/.config/nvim/lua/config/settings.lua <CR>"),
	dashboard.button("nk", "  nvim keymaps", ":e ~/.config/nvim/lua/config/keymaps.lua <CR>"),
	dashboard.button("np", "  nvim plugins", ":e ~/.config/nvim/lua/config/plugins.lua <CR>"),
	dashboard.button("tc", "  tmux config", ":e ~/.tmux.conf <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "github.com/techeddie/dotfiles_linux"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
