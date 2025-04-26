-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- desactivar proveedores
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

-- Opciones de identación
opt.tabstop = 4 -- Numero de espacios que equivale un tab
opt.shiftwidth = 4 -- Tamaño de identación
opt.softtabstop = 4 -- insertar 4 espacios a tab
opt.expandtab = true -- Expandir tabs en espacios
opt.smartindent = true -- Indentación inteligente

-- Search
opt.hlsearch = true
opt.smartcase = true

opt.spelllang = { "en", "es" }
opt.wrap = true -- wrap de lineas

-- clipboard
opt.clipboard = "unnamedplus"

-- desactivacion de la barra de estado
vim.g.ai_cmp = false

-- Python LSP
vim.g.lazyvim_python_lsp = "ruff"
--vim.g.lazyvim_python_lsp = "basedpyright"
