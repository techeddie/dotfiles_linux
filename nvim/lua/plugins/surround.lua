-- Add, delete, and change surrounding characters (brackets, quotes, tags)
return {
  "nvim-mini/mini.surround",
  opts = {
    mappings = {
      add = "gsa",
      delete = "gsd",
      replace = "gsr",
    },
  },
}
