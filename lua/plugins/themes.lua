local styles = { "dark", "light" }
--- @type LazySpec[]
return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "vscode"
      vim.o.background = styles[1]
    end,
    opts = {
      style = styles[1]
    }
  },

}
