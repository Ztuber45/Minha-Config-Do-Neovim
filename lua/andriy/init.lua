require("andriy.options")
require("andriy.keymaps")
require("andriy.autocmds")
require("andriy.lazy")

local opam_share = vim.fn.system('opam var share'):gsub('\n$', '')

-- Add the Merlin Vim plugin directory to runtimepath
vim.opt.rtp:append(opam_share .. "/merlin/vim")
