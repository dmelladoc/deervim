local options = {
    max_width = vim.o.columns / 3,
    minimum_width = 30,
    max_height = 3,
    top_down = true,
    fps = 60,
    icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "",
        WARN "",
    },
    render = "wrapped-compact",
    stages = "slide",
    timeout = 3000,
}

return {
    "rcarriga/nvim-notify",
    opts = options,
}
