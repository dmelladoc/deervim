-- nvim-tree
local options = {
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                git = false, -- No mostrar iconos de Git
                diagnostics = false, --no mostrar iconos diagnosticos
            },
            --modificar algunos simbolos
            glyphs = {
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                },
            },
        },
    },
    -- Filtros de archivos
    filters = {
        dotfiles = true, --no mostrar archivos ocultos.
    },
}


return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = options,
}
