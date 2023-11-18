return {
    defaults = {
        lazy = true, --Lazyload los paquetes por defecto
    },
    change_detection = {
        enabled = true, --recarga UI si hay cambios en config
        notify = false, --Notificacion si hay cambios
    },
    rtp = {
        disabled_plugins = {
            "gzip",
            "matchit",
            "matchparen",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
    },
}
