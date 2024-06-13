-- lua/treesitter-config.lua
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = false,

  highlight = {
    enable = true,

		disable = {},
	
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time
    additional_vim_regex_highlighting = false,
  },
}

