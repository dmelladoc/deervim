local options = {
    plugins = {
        spelling = {
            enabled = true,
            suggestions = 10,
        },
    },
    key_labels = {
        ["<cmd>"] = ": ",
        ["<cr>"] = "󰌑 ",
        ["<space>"] = "󱁐 ",
        ["<tab>"] = "󰌒 ",
    },
    icons = {
        breadcrumb = "󰞘 ",
        separator = "- ",
        group = "󰾂 ",
    },
    -- diseño de popup
    window = {
        border = "rounded",
        position = "top",
        margin = { 1, 0, 1, 0 }, --margenes [top, right, bottom, left]
        padding = { 1, 2, 1 , 2 }, --padding
        winblend = 35, --transparencia
        zindex = 1000, -- sobre todas las ventans
    },
    -- layout del popup
    layout = {
        height = { min = 4, max = 10 },
        width = { min = 20, max = 60 },
        spacing = 2, 
        align = 'center',
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " },
    show_help = false,
    show_keys = true,
    -- desactivar whichkey en ventanas especificas (neotree, telescope)...
    disable = {
        buftypes = {},
        filetypes = {},
    }
}


return {
    'folke/which-key.nvim',
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = options,
}
