vim.opt.guicursor = ""


vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 20
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.cmd('autocmd FileType * set tabstop=8 shiftwidth=8 softtabstop=8 expandtab smartindent')
vim.cmd('autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType html set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType latex set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType tex set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType markdown set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType md set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')
vim.cmd('autocmd FileType rust set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smartindent')

vim.cmd([[let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro']])
