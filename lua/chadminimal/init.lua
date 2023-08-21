vim.g.mapleader = ","

vim.o.number = true
vim.o.relativenumber = true
vim.o.wildignore = "**/node_modules/**,**/.git/**,**/__pycache__/**"
vim.o.path = ".,**"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.incsearch = true
vim.o.wrap = false
vim.o.guicursor = ""
vim.o.colorcolumn = "80"
vim.o.scrolloff = 8
vim.o.completeopt = "menuone"
vim.o.foldlevel = 99
vim.o.foldmethod = "indent"
vim.o.statusline = "%#Visual#%f %r %m %=%y [Ln: %l Col: %c]"

vim.cmd('colorscheme jellybeans')

require "chadminimal.commands"
require "chadminimal.mappings"
require "chadminimal.lsp"
