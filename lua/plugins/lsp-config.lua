return {
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        },
        config = function()
            require("mason-lspconfig").setup({
                automatic_enable = false,
                ensure_installed = {"omnisharp", "lua_ls", "rust_analyzer", "ruff", "pyright", "ts_ls"},
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({}) -- example with Lua language server
            lspconfig.rust_analyzer.setup({})
            lspconfig.omnisharp.setup({})
--            lspconfig.docker_language_server.setup({})
            lspconfig.ruff.setup({})
            lspconfig.html.setup({})
--            lspconfig.eslint.setup({})
            lspconfig.ts_ls.setup({})
            local util = require("lspconfig/util")

            -- получаем абсолютный путь к виртуальному окружению
            lspconfig.pyright.setup({
                root_dir = util.root_pattern("pyproject.json", "setup.py", "requirements.txt", ".git"),
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "workspace",
                            useLibraryCodeForTypes = true,
                            -- typeCheckingMode = 'off'
                            reportGeneralTypeIssues = 'warning',
                            strictListInference = false
                        },
                    },
                },
            })
            lspconfig.gopls.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "ca", vim.lsp.buf.code_action, {})

            vim.diagnostic.config({
                virtual_text = true,      -- Показывать ошибки как "тень" в коде
                signs = true,             -- Показывать значки в колонке слева
                update_in_insert = false, -- Не показывать ошибки во время набора
                underline = true,         -- Подчёркивать ошибки
                severity_sort = true,     -- Сортировать по степени важности
                float = {
                    source = "always",    -- Показывать источник (например, "lua_ls")
                },
            })

            --[[ vim.api.nvim_create_autocmd("cursorhold", {
                callback = function()
                    vim.diagnostic.open_float(nil, { focus = false })
                end
            }) ]]


            --[[ local signs = { Error = "", Warn = "", Hint = "", Info = "" }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
            end ]]
        end,
    },
}
