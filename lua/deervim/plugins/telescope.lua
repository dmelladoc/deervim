local options = {
    pickers = {
        find_files = {
            theme = "dropdown",
            prompt_title = "Buscar archivo", 
        },
        live_grep = {
            theme = "ivy",
            previewer = false,
            grep_open_files = true,
        },
        find_buffer = {
            theme = "dropdown",
            prompt_title = "Buffers abiertos",
            previewer = false,
        },
        colorscheme = {
            theme = "ivy",
            prompt_title = "Esquema de colores",
            layout_config = {
                height = 6,
            },
        },
        keymaps = {
            theme = "cursor",
            prompt_title = "Teclas",
        },
        spell_suggest = {
            theme = "cursor",
            prompt_title = "Ortografia",
        },
    },
}


return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    lazy = true,
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons",
    },
    opts = options,
}
