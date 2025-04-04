return {
    "stevearc/conform.nvim",
    keys = {
        -- keymap para mostrar información
        { "<leader>cn", "<cmd>ConformInfo<CR>", desc = "Conform Info" },
    },
    opts = {
        formatters_by_ft = {
            tex = { "latexindent" },
            python = { "ruff_fix", "ruff_format" },
            --markdown = { { "prettierd", "prettier", "dprint" } },
        },
    },
}
