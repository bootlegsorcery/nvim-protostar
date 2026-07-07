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

-- Error diagnostics
vim.keymap.set("n", "<leader>r", function()
  vim.diagnostic.open_float(nil, {
    focus = false,
    scope = "cursor",
    border = "rounded",
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
  })
end, { desc = "Show diagnostics (hover)" })

-- Line Numbers
vim.opt.number = true

vim.keymap.set("n", "<leader>n", function()
  local nu = vim.opt.number:get()
  local rnu = vim.opt.relativenumber:get()

  if nu and not rnu then
    vim.opt.relativenumber = true
  elseif nu and rnu then
    vim.opt.number = false
    vim.opt.relativenumber = false
  else
    vim.opt.number = true
  end
end, { desc = "Cycle line numbers options" })

