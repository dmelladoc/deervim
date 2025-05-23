return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
        vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "./.aux",
            out_dir = "./",
        }
    end,
    keys = {
        { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
    },
}
