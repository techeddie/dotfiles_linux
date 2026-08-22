-- extra hunk navigation keymaps: <leader>hn / <leader>hp alongside the
-- LazyVim defaults ]h / [h
return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local prev_on_attach = opts.on_attach
    opts.on_attach = function(buffer)
      if prev_on_attach then
        prev_on_attach(buffer)
      end

      local gs = package.loaded.gitsigns
      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      map("n", "<leader>hn", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "Next Hunk")

      map("n", "<leader>hN", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "Prev Hunk")

      map("n", "<leader>hp", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "Prev Hunk")
    end
    return opts
  end,
}
