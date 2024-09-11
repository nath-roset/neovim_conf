-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- VimScript, Lua
      "lua",
      "vim",
      -- C/CPP workflows
      "c",
      "cpp",
      "cmake",
      -- Web workflows
      "css",
      "html",
      "javascript",
      "json",
      "json5",
      "jsonc",
      "angular",
      "typescript",
      -- scripting
      "python",
      "bash",
      -- typsetting
      "typst",
      -- "latex", -- needs tree-sitter-cli
      -- "markdown", "markdown_inline"
      -- uni imposed
      "ocaml",
      -- conf files
      "yaml",
      -- misc
      "dot",
      "regex",
      "sql",
    },
  },
}
