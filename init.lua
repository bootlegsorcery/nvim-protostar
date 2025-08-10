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




-- Set-up Super + / for commenting
require('Comment').setup()

-- Normal mode: toggle comment on the current line
vim.keymap.set('n', '<D-/>', function()
  require('Comment.api').toggle.linewise.current()
end, { noremap = true, silent = true })

-- Visual mode: toggle comment on the selected lines
vim.keymap.set('v', '<D-/>', function()
  -- Get the visual mode type
  local esc = vim.api.nvim_replace_termcodes('<Esc>', true, false, true)
  local mode = vim.fn.visualmode()
  -- Exit visual mode first to avoid issues
  vim.api.nvim_feedkeys(esc, 'n', false)
  require('Comment.api').toggle.linewise(mode)
end, { noremap = true, silent = true })
