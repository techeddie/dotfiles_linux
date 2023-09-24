require'FTerm'.setup({
    border = 'double',
      auto_close = true,

    dimensions  = {
        height = 0.5,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<C-j>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
