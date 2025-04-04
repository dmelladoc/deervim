-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

keymap("n", "<leader>to", function()
    vim.opt.scrolloff = 999 - vim.o.scrolloff
end, { desc = "Toggle center scroll" })

-- función para togglear el q macro
-- estado inicial de q-macro
vim.g.q_record_macro = false

function _G.toggle_macro()
    if vim.g.q_record_macro then
        -- desactivar el macro q
        keymap("n", "q", "<Nop>", { noremap = true })
        vim.g.q_record_macro = false
    else
        -- reaactivar el macro q
        keymap("n", "q", "q", { noremap = true })
        vim.g.q_record_macro = true
    end
end

keymap("n", "<leader>uq", "<cmd>lua _G.toggle_macro()<CR>", { noremap = true, silent = true, desc = "Toggle q-macros" })
keymap("n", "q", "<Nop>", { noremap = true })
