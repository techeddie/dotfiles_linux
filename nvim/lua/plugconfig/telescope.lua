local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.load_extension('media_files')
telescope.load_extension('fzy_native')

local actions = require "telescope.actions"
  -- See `:help telescope.builtin`
  -- vim.keymap.set('n', '<C-h>', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
  -- vim.keymap.set('n', '<C-l>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })


--FUZZY FIND IN CURRENT BUFFER
  vim.keymap.set('n', '<leader>f', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = true,
    })
  end, { desc = '[/] Fuzzily search in current buffer]' })

  vim.keymap.set('n', '<M-f>', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer]' })

--SHOW BUFFER
  vim.keymap.set('n', '<leader><space>', function()
    require('telescope.builtin').buffers(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] SHOW ME BUFFERS]' })


--GIT COMMANDS
  -- vim.keymap.set('n', '<leader>gs', require('telescope.builtin').git_status, { desc = 'Git status' })
  vim.keymap.set("n", "<leader>gs", ":lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = true }))<cr>")
  -- vim.keymap.set('n', '<leader>gc', require('telescope.builtin').git_bcommits, { desc = 'Git commits' })
  vim.keymap.set("n", "<leader>gc", ":lua require'telescope.builtin'.git_bcommits(require('telescope.themes').get_dropdown({ previewer = true }))<cr>")
  -- vim.keymap.set('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'Git branches' })
  vim.keymap.set("n", "<leader>gb", ":lua require'telescope.builtin'.git_branches(require('telescope.themes').get_dropdown({ previewer = true }))<cr>")


--SEARCH COMMANDS
  -- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
  vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
  vim.keymap.set('n', '<leader>wg', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
  vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  vim.keymap.set('n', '<leader>ag', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  vim.keymap.set('n', '<leader>rg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  vim.keymap.set('n', '<leader>gg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

--FIND COMMANDS
  vim.keymap.set("n", "<C-p>", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
  vim.keymap.set("n", "<leader>p", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
  vim.keymap.set("n", "<leader>fn", ":Telescope find_files hidden=false cwd=~/gitREPO/dotfiles_linux/nvim/ sorting_strategy=ascending<CR>")
  vim.keymap.set("n", "<leader>fd", ":Telescope find_files hidden=false cwd=~/gitREPO/dotfiles_linux/ sorting_strategy=ascending<CR>")
  vim.keymap.set("n", "<leader>fs", ":Telescope find_files hidden=false cwd=~/scripts/ sorting_strategy=ascending<CR>")
  vim.keymap.set("n", "<leader>fc", ":Telescope find_files hidden=false cwd=~/.config/ sorting_strategy=ascending<CR>")
  vim.keymap.set("n", "<leader>fg", ":Telescope find_files hidden=false cwd=~/gitREPO/ sorting_strategy=ascending<CR>")

-- HISTORY COMMAND 
  vim.keymap.set("n", "<C-h>", ":Telescope oldfiles<CR>")

--TELESCOPE SETUP
telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    initial_mode = "normal",

    mappings = {
      i = {
        --[[ ["<C-n>"] = actions.cycle_history_next, ]]
        --[[ ["<C-p>"] = actions.cycle_history_prev, ]]
        -- ["<S-Down>"] = actions.move_selection_next,
        -- ["<S-Up>"] = actions.move_selection_previous,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg" },
      find_cmd = "rg" -- find command (defaults to `fd`)
    },
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}
