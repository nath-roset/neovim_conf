--- @type LazySpec[]
return {
  {
    "williamboman/mason.nvim", lazy = false, opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim", opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", -- lua-language-server
        "bashls", -- bash-language-server
        "clangd",
        "neocmake",
        "jsonls",
        "ruff",
        "stylua",
      }
    }
  },
}
