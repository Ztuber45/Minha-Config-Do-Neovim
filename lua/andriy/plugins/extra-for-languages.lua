return {
    { "ocaml/vim-ocaml" },
    { "OrangeT/vim-csharp" },
    { "tris203/rzls.nvim" },
    { "jlcrochet/vim-razor" },
    { "jlcrochet/vim-cs" },
    {
        "seblj/roslyn.nvim",
        ft = "cs",
        opts = function ()
            require('roslyn').setup {
                args = {
                    '--logLevel=Information',
                    '--extensionLogDirectory=' .. vim.fs.dirname(vim.lsp.get_log_path()),
                    '--razorSourceGenerator=' .. vim.fs.joinpath(
                        vim.fn.stdpath 'data' --[[@as string]],
                        'mason',
                        'packages',
                        'roslyn',
                        'libexec',
                        'Microsoft.CodeAnalysis.Razor.Compiler.dll'
                    ),
                    '--razorDesignTimePath=' .. vim.fs.joinpath(
                        vim.fn.stdpath 'data' --[[@as string]],
                        'mason',
                        'packages',
                        'rzls',
                        'libexec',
                        'Targets',
                        'Microsoft.NET.Sdk.Razor.DesignTime.targets'
                    ),
                },
                config = {
                    handlers = require 'rzls.roslyn_handlers',
                },
            }
        end
    },
    { "hasufell/ghcup.vim" },
    {
        "neovimhaskell/haskell-vim",

        config = function()
            vim.g.haskell_enable_quantification = 1   -- Enable highlighting of `forall`
            vim.g.haskell_enable_recursivedo = 1      -- Enable highlighting of `mdo` and `rec`
            vim.g.haskell_enable_arrowsyntax = 1      -- Enable highlighting of `proc`
            vim.g.haskell_enable_pattern_synonyms = 1 -- Enable highlighting of `pattern`
            vim.g.haskell_enable_typeroles = 1        -- Enable highlighting of type roles
            vim.g.haskell_enable_static_pointers = 1  -- Enable highlighting of `static`
            vim.g.haskell_backpack = 1                -- Enable highlighting of backpack keywords

            vim.g.haskell_indent_if = 3
            vim.g.haskell_indent_case = 2
            vim.g.haskell_indent_let = 4
            vim.g.haskell_indent_where = 6
            vim.g.haskell_indent_before_where = 2
            vim.g.haskell_indent_after_bare_where = 2
            vim.g.haskell_indent_do = 3
            vim.g.haskell_indent_in = 1
            vim.g.haskell_indent_guard = 2
            vim.g.haskell_indent_case_alternative = 1
        end
    },
}
