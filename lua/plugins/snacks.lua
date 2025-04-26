return {
    "folke/snacks.nvim",
    opts = {
        image = {
            enabled = true,
            inline = false,
            float = true,
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
