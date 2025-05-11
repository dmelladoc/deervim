return {
    "folke/snacks.nvim",
    opts = {
        image = {
            doc = {
                enabled = true,
                inline = false,
                float = true,
                max_width = 60,
                max_height = 30,
            },
            math = {
                enabled = true,
                latex = {
                    font_size = "normalsize",
                },
            },
        },
        picker = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", ".git", ".aux" },
        },
    },
}
