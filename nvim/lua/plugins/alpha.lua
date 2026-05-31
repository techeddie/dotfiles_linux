return {
	-- Disable Snacks dashboard
	{
		"folke/snacks.nvim",
		opts = { dashboard = { enabled = false } },
	},

	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[                                  __]],
				[[     ___     ___    ___   __  __ /\_\    ___ ___]],
				[[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
				[[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
				[[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
				[[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
			}

			-- dashboard.section.header.val = {}

			dashboard.config.layout = {
				dashboard.section.header,
				{ type = "padding", val = 1 },
				dashboard.section.buttons,
				dashboard.section.footer,
				{ type = "padding", val = 8 }, -- pushes everything up by filling the bottom
			}

			-- Helper: build an edit-file button with no spacing
			local function file(key, desc, path)
				local b = dashboard.button(key, desc, "<cmd>e " .. path .. "<cr>")
				b.opts.hl = "GruvboxFg1"
				b.opts.shrink_margin = false
				return b
			end

			-- Helper: build a command button with no spacing
			local function cmd(key, desc, command)
				local b = dashboard.button(key, desc, command)
				b.opts.spacing = 0
				return b
			end

			dashboard.section.buttons.opts.spacing = 0
			dashboard.section.buttons.val = {
				{ type = "padding", val = 1 },
				file("ic", "󰖳 │ i3 Config", "~/.config/i3/config"),
				file("kc", " │ Karabiner Keymaps", "~/.config/karabiner/karabiner.json"),
				file("lc", " │ Linux Commands", "~/Nextcloud/LINUX/LINUX_COMMANDS.sh"),
				file("lfc", "󰙅 │ lf Config", "~/.config/lf/lfrc"),
				{ type = "padding", val = 1 },
				file("oh", "󰠮 │ Obsidian Home", "~/opt/OBSIDIAN-T490_FS01/Home.md"),
				file("os", "󰌌 │ Obsidian Shortcuts", "~/opt/OBSIDIAN-T490_FS01/_readme/SHORTCUTS TO LEARN.md"),
				file("rb", "󰁯 │ Restic Backup Script", "~/scripts/restic_runBackup.sh"),
				file("tc", " │ Tmux Config", "~/.tmux.conf"),
				file("yc", " │ Yazi Config", "~/.config/yazi/yazi.toml"),
				file("yk", " │ Yazi Keymaps", "~/.config/yazi/keymap.toml"),
				file("zc", " │ Zsh Config", "~/.zshrc"),
				{ type = "padding", val = 1 },
				file("ni", " │ Neovim Init", "~/.config/nvim/init.lua"),
				file("nk", "󰌌 │ Neovim Keymaps", "~/.config/nvim/lua/config/keymaps.lua"),
				file("no", " │ Neovim Options", "~/.config/nvim/lua/config/options.lua"),
				{ type = "padding", val = 1 },
				cmd("sl", "󰒲 │ Lazy", "<cmd>Lazy<cr>"),
				cmd("sle", "󰒲 │ LazyExtras", "<cmd>LazyExtras<cr>"),
				cmd("q", "󰗼 │ Quit", "<cmd>qa<cr>"),
			}

			-- dashboard.section.footer.val = "have a good one, eddie"
			dashboard.section.header.opts.hl = "GruvboxYellow"
			dashboard.section.buttons.opts.hl = "GruvboxFg1"
			dashboard.section.footer.opts.hl = "GruvboxGray"

			dashboard.config.opts.noautocmd = true
			return dashboard
		end,
		config = function(_, dashboard)
			require("alpha").setup(dashboard.config)
		end,
	},
}
