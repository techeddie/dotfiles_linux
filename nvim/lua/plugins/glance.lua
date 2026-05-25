-- Preview definitions, references, and implementations in a floating window
return {
  "dnlhc/glance.nvim",
  cmd = "Glance",
  keys = {
    { "gD", "<cmd>Glance definitions<cr>",      desc = "Glance definitions" },
    { "gR", "<cmd>Glance references<cr>",       desc = "Glance references" },
    { "gY", "<cmd>Glance type_definitions<cr>", desc = "Glance type definitions" },
    { "gI", "<cmd>Glance implementations<cr>",  desc = "Glance implementations" },
  },
}
