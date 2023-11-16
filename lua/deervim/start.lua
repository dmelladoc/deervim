-- Cargar lazy.nvim para poder inicializar los plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--local plugins = require("deervim.plugins")
local opts = require("deervim.config.lazy")

require("lazy").setup('deervim.plugins', opts)

-- cargar nuestro tema
vim.cmd[[colorscheme tokyonight]]

-- sistema de notificaciones
vim.notify = require("notify")
