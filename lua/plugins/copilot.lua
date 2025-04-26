return {
    "zbirenbaum/copilot.lua",
    keys = {
        {
            "<leader>at",
            function()
                if require("copilot.client").is_disabled() then
                    require("copilot.command").enable()
                else
                    require("copilot.command").disable()
                end
            end,
            desc = "Toggle Copilot",
        },
    },
    opts = {
        filetypes = {
            markdown = false,
            python = true,
            tex = true,
            lua = true,
            ["*"] = false,
        },
        copilot_model = "gpt-4o-copilot",
        suggestion = {
            keymap = {
                accept_word = "<M-l>",
                accept_line = "<M-L>",
            },
        },
    },
}
