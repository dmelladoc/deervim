# DeerVim

Mi configuración de Neovim. Esta vez con mayor organizacion.
Una versión anterior se encuentra en mis [dotfiles](https://www.github.com/dmelladoc/dotfiles).

**Work in progress**

## Motivación
- Armar una versión comoda y que me permita tambien compartirla con mis cercanos.
- Permitir facilidad de personalización, orientada a usuarios en español.
- Porque siempre es bueno adoctrinar gente en el uso de vim/neovim.

## Requisitos
- Neovim
- Cualquier [NerdFont](https://www.nerdfonts.com) (Recomendación: `IosevkaTerm`)
- Emulador de Terminal (Recomendacion: [Alacritty](https://github.com/alacritty/alacritty)

## Instalación
- Clonar el repositorio en `~/.config/nvim`
- Abrir. `lazy.nvim` instalará los paquetes utilizados


## Progreso
### Ya armado
- Esquema de color (tokyonight moon)
- Fuzzy Finder (Telescope)
- Gestor de keybindings (which-key)
- Barra de estado (lualine)
- Notificaciones (Notify)

### Pendientes
- LSP (Mason y etc...)
- Copilot
- Manejo de archivos (neotree?)
- Git (gitsigns, github)
- otros
- Terminal

### Soporte de lenguajes
Idealmente buscamos con el LSP configurar el soporte por defecto para los lenguajes con los cuales trabajo principalmente:
Esta lista menciona algunos lenguajes y soporte de ciertos elementos que se espera desarrollar.

- Python:
  - Interprete interno
  - Debug?
  - Notebook
- LaTeX:
  - Compilacion
  - synctex
- Lua
