local colors = require('tokyonight.colors').setup({style='moon'})
local lazy_status = require('lazy.status') 

local c_branch = {
    'branch',
    icon = '',
    color = { bg = colors.green, fg = colors.bg_dark },
    separator = { left = "", right = "" },
    draw_empty = true,
}

local c_diff = {
    'diff',
    colored = true,
    symbols = {
        added = '',
        modified = '',
        removed = '',
    },
    color = { bg = colors.green, fg = colors.bg_dark },
    separator = { left = "", right = "" },
}

local c_diagnostics = {
    'diagnostics',
    sources = { 'nvim_lsp', 'nvim_diagnostic' },
    sections = { 'error', 'warn', 'info' },
    symbols = {
        error = ' ',
        warn = ' ',
        info = ' ',
    },
    colored = true,
    always_visible = true,
}

local c_fileinfo = {
    {
        'filetype',
        colored = true,
        icon_only = true,
        padding = { left = 1, right = 0 },
        color = { bg = colors.magenta , fg = colors.bg_dark},
        icon = { align = 'center' },
        separator = '',
    },
    {
        'filename',
        file_status = true, --si archivo modificado
        newfile_status = true, -- archivo nuevo
        path = 0,
        --color = { bg = colors.bg_dark, fg = colors.fg_dark },
        symbols = {
            modified = '󱇨',
            readonly = '󱀰',
            unnamed = '󱀶',
            newfile = '',
        },
        padding = 1,
        separator = { right = "" }, --
        color = { bg = colors.magenta, fg = colors.bg_dark },
    },
    {
        'filesize',
        separator = { left = '', right = '' },
        padding = { left = 1, right = 1 },
        color = { bg = colors.purple, fg = colors.bg_dark },
        always_visible = true,
    },
}

local c_location = {
    { 
        'progress',
        separator = {left ='', right = '' },
        padding = { left = 1, right = 1 },
        color = { bg = colors.red1, fg = colors.bg_dark },
    },
    { 
        'location',
        padding = { left = 0, right = 1 },
        color = { bg = colors.red, fg = colors.bg_dark },
    },
}

local c_tabs = {
    'tabs',
    tab_max_length = 20, -- ancho de cada tab
    max_length = vim.o.columns / 2, -- ancho total de la pestaña
    mode = 0, -- tab_nr
    use_mode_colors = false,
    tabs_color = {
        active = {fg = colors.bg_dark, bg = colors.blue },
        inactive = {fg = colors.fg_dark, bg = colors.blue0 },
    },
    show_modified_status = false,
    separator = {left ='', right = '' },
}

local c_buffers = {
    'buffers',
    show_filename_only = true, --solo nombre
    hide_filename_extension = true, --no extensiones,
    show_modified_status = true, --indicador,
    mode = 2,
    max_length = vim.o.columns * 2 / 3,
    use_mode_colors = false,
    filetype_names ={ TelescopePrompt = 'Telescope' },
    buffers_color = {
        active = {
            fg = colors.bg_dark,
            bg = colors.blue1,
        },
        inactive = {
            fg = colors.fg_dark,
            bg = colors.bg_dark,
        },
    },
    separator = {left ='', right = '' },
    symbols = {
        modified = '󰣕',
        alternate_file = '󰻃',
        directory = '',
    },
}

local c_search = {
    {
        'searchcount', 
        color = { fg = colors.bg_dark, bg = colors.yellow },
        maxcount = 999, 
        timeout = 500,
    },
    {
        'selectioncount',
        color = {fg = colors.bg_dark, bg = colors.orange },
    },
}

local c_sys = {
    { 
        'datetime',
        style = ' %H:%M',
        color = { bg = colors.blue, fg = colors.bg_dark },
    },
    {
        lazy_status.updates,
        cond = lazy_status.has_updates,
        icon = { ' ', color = { bg = colors.cyan, fg = colors.bg_dark }, },
    },
}


local options = {
    options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = "",
        section_separators = { right = "", left = "" },
    },
    globalstatus = true, --barra unica
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { c_diagnostics },
        lualine_c = c_fileinfo,
        lualine_x = c_location,
        lualine_y = c_search,
        lualine_z = c_sys,
    },
    tabline = {
        lualine_a = { c_tabs },
        lualine_b = { c_buffers },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { c_branch, c_diff },
    },
    extensions = { 'lazy' },
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons', 
        opt = true,
    },
    opts = options,
}
