-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        --[[
        -- disabled for ARM
        "lua_ls",
        "clangd",
        "tinymist",
        "marksman",
        --]]
        "bashls",
        "neocmake",
        "jsonls",
        "ruff",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- "stylua",
        "shellcheck",
        "shfmt",
        "cmakelang",
        "cmakelint",
        "clang_format",
        "prettier",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "debugpy",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
