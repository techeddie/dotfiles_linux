return {
	"mhinz/vim-startify",
	-- keys = {
	-- 	{ "<leader>m", "<cmd>Startify<cr>", desc = "Startify" },
	-- },
	config = function()
		local g = vim.g
		g.startify_custom_header = {}

		g.startify_bookmarks = {
			{ ac = "~/.config/alacritty/alacritty.toml" }, -- alacritty config
			{ as = "~/.config/aerospace/aerospace.toml" }, -- aerospace config
			{ ic = "~/.config/i3/config" }, -- i3 config file
			{ gc = "~/.config/ghostty/config" }, -- ghostty config file
			{ lc = "~/Nextcloud/LINUX/LINUX_COMMANDS.sh" }, -- linux knowledge base
			{ yc = "~/config/yazi/yazi.toml" }, -- yazi config
			{ yk = "~/config/yazi/keymap.toml" }, -- yazi keymaps
			{ kc = "~/config/karabiner/karabiner.json" }, -- karabiner keymaps
			{ lf = "~/config/lf/lfrc" }, -- lf file manager config
			{ ni = "~/.config/nvim/init.lua" }, -- neovim init file
			{ sc = "~/.config/nvim/lua/plugins/startify.lua" }, -- startify config
			{ nk = "~/.config/nvim/lua/config/keymaps.lua" }, -- neovim keymaps
			{ no = "~/.config/nvim/lua/config/options.lua" }, -- neovim options
			{ ns = "~/.config/nvim/lua/config/options.lua" }, -- neovim options
			{ nc = "~/.config/nvim/lua/config/options.lua" }, -- neovim options
			{ rb = "~/scripts/restic_runBackup.sh" }, -- run remote backup
			{ tc = "~/.tmux.conf" }, -- tmux config file
			{ zc = "~/.zshrc" }, -- zsh config
		}

		g.startify_session_autoload = 0 --restart session on startup
		g.startify_change_to_vcs_root = 1
		g.startify_enable_special = 1
		g.startify_files_number = 8
		g.startify_lists = {
			{ type = "files", header = { "•   Files " } },
			{ type = "bookmarks", header = { "•   Bookmarks" } },
		}
	end,
}
