function Waifu(color)
	color = color or "everforest" -- default color scheme
	vim.cmd.colorscheme("aura-dark")
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Waifu()
