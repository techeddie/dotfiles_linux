local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

require "nvim-tree".setup()

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  renderer = {
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  open_on_tab = true,
  hijack_cursor = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  actions = {
  open_file = {
    quit_on_open = false,},
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        { key = "<Left>", action = "close_node" },
        { key = "<M-h>", action = "split" },
        { key = "<M-o>", action = "preview" },
        { key = "<M-v>", action = "vsplit" },
        { key = "<Right>", action = "open" },
        { key = "<Tab>", action = "close" }, 
        { key = "h", cb = tree_cb "close_node" },
        { key = "i", action = "toggle_file_info" },
        { key = "p", action = "preview" },
        { key = "u", action = "dir_up" },
        { key = "v", cb = tree_cb "vsplit" },
        { key = "y", action = "copy_absolute_path" },
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
      },
    },
    number = false,
    relativenumber = false,
  },
}
