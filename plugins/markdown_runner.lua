return {
  "dbridges/vim-markdown-runner",
  ft = "markdown",
  config = function()
    -- Optional: Define key mappings for convenience
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "markdown",
      callback = function()
        local opts = { buffer = true, noremap = true, silent = true }
        vim.keymap.set("n", "<Leader>r", ":MarkdownRunner<CR>", opts)
        vim.keymap.set("n", "<Leader>R", ":MarkdownRunnerInsert<CR>", opts)
      end,
    })
  end,
}

