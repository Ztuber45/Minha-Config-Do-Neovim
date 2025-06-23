return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim", version = "^1.0.0" },
        { "williamboman/mason-lspconfig.nvim", version = "^1.0.0" },
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "rust_analyzer",
                "lua_ls",
                "pyright",
            }
        })

        local capabilities = require('cmp_nvim_lsp').default_capabilities();

        local on_attach = function(_, _)
            local opts = { }
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>qf", function() vim.lsp.buf.code_action() end, opts)
        end

        require("mason-lspconfig").setup_handlers {
            function (server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup {
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            end,
        }

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = true,
                style = "minimal",
                border = "single",
                source = "always",
                header = "",
                prefix = "",
            },
        })

        require("lspconfig").rust_analyzer.setup {
            root_dir = require("lspconfig").util.root_pattern("Cargo.toml", ".git"),
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = true, -- Changed to boolean
                    check = {
                        command = "clippy", -- Moved command here
                    },
                    diagnostics = {
                        enable = true,
                    },
                },
            },
        }

        require("lspconfig").ocamllsp.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = { "ocamllsp" },
            filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
            root_dir = require("lspconfig").util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace"),
        })
        require("lspconfig").hls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = { "haskell-language-server-wrapper", "--lsp" },
            filetypes = { "haskell", "lhaskell" },
            root_dir = require("lspconfig").util.root_pattern("cabal.project", "stack.yaml", "package.yaml", "hie.yaml", ".git"),
        })
    end
}
