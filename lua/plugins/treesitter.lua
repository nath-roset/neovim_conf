---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  config = function (_,opts)
	require "nvim-treesitter.configs".setup(opts)
    end,
  opts = {
    -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
      "lua",
      "vim",
      "c",
      "cpp",
      "cmake",
      "rust",
      "bash",
      "typst",
      "yaml",
    },
  },
}
