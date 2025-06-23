function ColorMyPencils(color)
    color = color or "rose-pine-dawn"
    vim.cmd.colorscheme(color)

    if color == "monokai" then
        require("monokai").setup {
            italics = false,
        }
    elseif color == "fluoromachine" then
        require("fluoromachine").setup {
            glow = false,
            overrides = {
                ['@type']      = { italic = false, bold = false },
                ['@function']  = { italic = false, bold = false },
                ['@comment']   = { italic = false, bold = false },
                ['@keyword']   = { italic = false, bold = false },
                ['@constant']  = { italic = false, bold = false },
                ['@variable']  = { italic = false, bold = false },
                ['@field']     = { italic = false, bold = false },
                ['@parameter'] = { italic = false, bold = false },
            },
        }
    elseif color == "rose-pine" or color == "rose-pine-dawn" then
        require("rose-pine").setup {
            styles = {
                bold = true,
                italic = false,
                transparency = true,
            },
        }
    end

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "maxmx03/fluoromachine.nvim",
        name = "fluoromachine",
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            ColorMyPencils()
        end
    },
    {
        "tanvirtin/monokai.nvim",
        name = "monokai",
        config = function()
            ColorMyPencils()
        end
    },
}
