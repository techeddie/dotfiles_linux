-- Colorscheme and custom global keybindings
return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- vim.cmd("colorscheme tokyonight")
		vim.cmd("colorscheme tokyodark")

		-- file types
		vim.filetype.add({
			filename = {
				["lfrc"] = "sh",
			},
		})
	end,
	-- custom keymaps
	keys = function()
		return {
      { "<C-k>",          ":qall!<CR>",        desc = "Close nvim"              },
      { "<A-k>",          "<cmd>bnext<cr>",    desc = "Next buffer"             },
      { "<A-j>",          "<cmd>bprevious<cr>",desc = "Previous buffer"         },
      { "<leader>h",      "<C-w>h",            desc = "Switch pane left"        },
      { "<leader>j",      "<C-w>j",            desc = "Switch pane down"        },
      { "<leader>k",      "<C-w>k",            desc = "Switch pane up"          },
      { "<leader>l",      "<C-w>l",            desc = "Switch pane right"       },
      { "<leader><space>","za",                desc = "Toggle fold"             },
      { "<leader>hs",     ":split<CR>",        desc = "Horizontal split"        },
      { "<leader>vs",     ":vsplit<CR>",       desc = "Vertical split"          },
      { "<leader>nf",     ":enew<CR>",         desc = "New file"                },
      { "<leader>tn",     ":tabnew<CR>",       desc = "New tab"                 },
      { "<leader>nn",     ":a<CR><CR>.<CR>",   desc = "Insert newline below"    },
      { "<leader>nl",     ":a<CR><CR>.<CR>",   desc = "Insert newline below"    },
      { "<leader>lz",     ":Lazy<CR>",         desc = "Open Lazy"               },
      { "<leader>lze",    ":LazyExtras<CR>",   desc = "Open LazyExtras"         },
      { "<leader>le",     ":LazyExtras<CR>",   desc = "Open LazyExtras"         },
      { "<S-Up>",         "<C-y>",             desc = "Scroll view up"          },
      { "<S-Down>",       "<C-e>",             desc = "Scroll view down"        },
			{
				"<leader>db",
				function()
					Snacks.bufdelete()
				end,
				{ desc = "Delete Buffer" },
			}, -- close buffer
			{
				"<C-g>",
				function()
					Snacks.lazygit({ cwd = LazyVim.root.git() })
				end,
				{ desc = "Lazygit (Root Dir)" },
			}, --lazygit
			{
				"<C-l>",
				function()
					Snacks.picker.buffers()
				end,
				{ desc = "Open Buffers" },
			}, -- open buffers (overrides default go to right window)
			{
				"<C-f>",
				function()
					Snacks.picker.lines()
				end,
				{ desc = "Buffer lines" },
			}, --find text in current file via bufferline
		}
	end,
}
