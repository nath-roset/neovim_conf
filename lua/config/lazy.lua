-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

vim.opt.relativenumber = false -- sets vim.opt.relativenumber
vim.opt.number = true          -- sets vim.opt.number
vim.opt.spell = false          -- sets vim.opt.spell
vim.opt.signcolumn = "yes"     -- sets vim.opt.signcolumn to yes
vim.opt.wrap = true            -- sets vim.opt.wrap
vim.opt.list = true
vim.opt.listchars = {
  eol = "↵",
  tab = "->",
  trail = "·",
  -- lead = "·",
  extends = "→",
  precedes = "←",
}

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "vscode" } },
  -- automatically check for plugin updates
  checker = { enabled = false },
} --[[@as LazyConfig]])
