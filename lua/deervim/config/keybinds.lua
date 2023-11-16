local wk = require("which-key")
local tsbuild = require('telescope.builtin')

--setup de keymaps especificos
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>', { desc = " Ventana" })

-- registro
local bindings = {
    b = {
        name = " Buffers",
        b = { tsbuild.buffers, 'Listado' },
        d = { "<cmd>bdelete<cr>", "Cerrar" },
        h = { "<cmd>bprevious<cr>", "Anterior" },
        l = { "<cmd>bnext<cr>", "Siguiente" },
        ["0"] = { "<cmd>bfirst<cr>", "Inicio" },
        ["$"] = { "<cmd>blast<cr>", "Final" }, 
    },
    f = {
         name= " Archivo",
         n = { "<cmd>enew<cr>", " Nuevo"},
         e = { tsbuild.find_files, '󰮗 Buscar' },
         --o = { "<cmd>edit <tab><cr>", " Abrir"},
         s = { "<cmd>write<cr>", " Guardar"},
    },
    p = {
        name = " Paquetes",
        l = { "<cmd>Lazy<cr>", "Lazy" },
    },
    s = {
        name = '󰰡 ',
        c = { "<cmd>set spell!<cr>", "󰓆 Corrector" },
    },
    t = {
         name = '󰰤 ',
         s = {
             name=' Telescope',
             b = { tsbuild.buffers, ' Buffers' },
             c = { tsbuild.colorscheme, '󰸌 Colores' },
             f = { tsbuild.find_files, '󰮗 Buscar' },
             --g = { tsbuild.live_grep, 'Grep' },
             h = { tsbuild.help_tags, '󰘥 Ayuda' },
             -- n = { '<cmd>Telescope notify<cr>', 'Notificaciones' },
             o = { tsbuild.oldfiles, ' Historial' },
             s = { tsbuild.git_status, ' Status' },
         },
    },
    w = {
        name = ' Ventana',
        h = { ":wincmd h<cr>",  " Ventana" },
        j = { ":wincmd j<cr>",  " Ventana" },
        k = { ":wincmd k<cr>",  " Ventana" },
        l = { ":wincmd l<cr>",  " Ventana" },
        c = { "<cmd>close<cr>", "󰖭 Cerrar" },
        n = { "<cmd>new<cr>", " Nueva" },
        v = { "<cmd>vsplit<cr>", " vsplit" },
        s = { "<cmd>split<cr>", " hsplit" },
        r = { ":wincmd r<cr>", " Rotar" },
        R = { ":wincmd R<cr>", " Rotar" },
    },
}

local opts = {
    prefix = "<leader>",
    silent = true,
    noremap = true,
}


wk.register(bindings, opts)
