return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
                "rust", "c_sharp"
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,
                disable = { }
            },

            indent = {
                enable = true,
            },

            autotag = {
                enable = true,
            },

            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            },
        })
    end
}
