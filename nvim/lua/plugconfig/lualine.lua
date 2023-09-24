-- Lua
vim.g.newpaper_lualine_bold = true --default
require("lualine").setup {
    options = {
        theme = "newpaper-dark",
        -- theme = "newpaper-light",
        -- empty with newpaper colorscheme
        section_separators = {"", ""}, 
        component_separators = {"│", "│"}
    },
    sections = {
        -- GIT settings
        lualine_b = {
            {"branch", icon = ""},
            {
                "diff",
                colored = true,
                diff_color = {
                    added    = { fg = "#28A745" },
                    modified = { fg = "#DBAB09" },
                    removed  = { fg = "#D73A49" }
                },
                symbols = {
                    added    = " ",
                    modified = " ",
                    removed  = " "
                }
            }
        },
        lualine_x = {
            {
                "diagnostics",
                sources =  {"nvim_lsp"},
                sections = {"error", "warn", "info", "hint"},
                diagnostics_color = {
                    error = { fg = "#AF0000" },
                    warn  = { fg = "#D75F00" },
                    info  = { fg = "#0087AF" },
                    hint  = { fg = "#008700" }
                },
                symbols = {
                    error = " ",
                    warn  = " ",
                    info  = " ",
                    hint  = " "
                }
            }
        }
    }
}
