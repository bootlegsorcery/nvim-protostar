require("protostar.lazy")

require("catppuccin").setup({
	flavour = "mocha",
	treesitter = true,
})

vim.cmd.colorscheme "catppuccin-mocha"

-- Set tabs to be 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
