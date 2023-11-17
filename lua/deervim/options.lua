-- Archivo se carga desde core

-- vim leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- autoformat
vim.g.autoformat = true

-- root dir detection
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

local opt = vim.opt

-- opciones generales
opt.autowrite = false -- autoguardado
opt.clipboard = "unnamedplus" --clipboard del sistema
-- opt.cmdheight = 0 -- cmd solo aparece al usarlo
opt.completeopt = { "menu", "menuone", "noselect" }
opt.confirm = true -- preguntar antes de salir de buffer
opt.cursorline = true -- Highlighting de la linea 

opt.incsearch = true -- busqueda incremental
opt.hlsearch = true -- highlight matches
opt.ignorecase = true -- ignora Mayusculas
opt.smartcase = true

opt.formatoptions = "jcroqlnt" -- opciones de formato (wrap y etc..)

opt.laststatus = 3
opt.number = true -- linea de numero
opt.relativenumber = true --relativo a la linea actual

opt.expandtab = true -- espacios como tabs
opt.smartindent = true -- identacion automatica
opt.tabstop = 4 -- espacios pra tabl
opt.shiftwidth = 4 -- tamaño de identación
opt.shiftround = true 
opt.spelllang = { 'en', 'es_CL' } 

opt.splitright = true -- split a la derecha por defecto
opt.termguicolors = true -- fullcolor

opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 1000

opt.wrap = true -- line wrap

vim.g.markdown_recommended_style = 0
