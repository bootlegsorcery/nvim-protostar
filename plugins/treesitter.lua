return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.config').setup {
      ensure_installed = { 
	      'markdown',
	      'markdown_inline',
	      'python',
	      'javascript',
	      'typescript',
      },
      highlight = { enable = true },
      indent = { enable = true },
    }
  end
}

