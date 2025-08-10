return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { 
	      'markdown',
	      'markdown_inline',
	      'python',
	      'javascript',
	      'typescript',
      },
      highlight = { enable = true },
    }
  end
}

