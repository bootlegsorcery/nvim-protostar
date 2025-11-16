-- Set <leader>
vim.g.mapleader = " "

-- Load Lazy
require("protostar.lazy")

-- Set pretty colours
vim.cmd.colorscheme "catppuccin-mocha"

-- Set tabs to be 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevelstart = 9999
