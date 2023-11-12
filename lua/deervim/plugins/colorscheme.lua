local options = {
    style = "moon",
    transparent = true, -- transparencia
    terminal_colors = true, -- superponer colores vim en terminal interna
    styles = {
        functions = { bold = true }, -- funcion en negrita  
        keywords = { italic = false },
        floats = "transparent", --floats transparentes dentro de nvim
    },
    sidebars = { "qf", "vista_kind", "neotree", "terminal" },
}

return {
    {
        'folke/tokyonight.nvim',
        lazy = true,
        priority = 1000,
        opts = options,
    },
}
