return {
    entry = function()
        ya.emit("shell", {
            "lazygit",
            block = true,
            confirm = false,
        })
    end,
}
