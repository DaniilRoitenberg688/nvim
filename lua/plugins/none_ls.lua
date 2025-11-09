return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim"
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
--                null_ls.builtins.formatting.black,
--                null_ls.builtins.formatting.isort,
                --          null_ls.builtins.diagnostics.pylint,
--                null_ls.builtins.diagnostics.ruff,
--                null_ls.builtins.diagnostics.bacon,
                null_ls.builtins.formatting.stylua,
--                null_ls.builtins.formatting.rustfmt,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.diagnostics.golangci_lint,
--                null_ls.builtins.diagnostics.eslint_d
--                require("none-ls.diagnostics.eslint_d"),
                require("none-ls.diagnostics.ruff"),
                require("none-ls.formatting.ruff"),
--                require("none-ls.diagnostics.bacon"),
                require("none-ls.formatting.rustfmt"),
            },
        })
        vim.keymap.set({ "n", 'i' }, "<C-A-l>", vim.lsp.buf.format, {})
    end,
}
