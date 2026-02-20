-- Global config
vim.opt.number = true
vim.opt.scrolloff = 10
vim.g.mapleader= " "

vim.o.tabstop = 4         -- A TAB character looks like 4 spaces on screen
vim.o.shiftwidth = 4      -- Number of spaces inserted when indenting
vim.o.expandtab = true    -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4     -- Number of spaces inserted instead of a TAB character
vim.o.autoindent = true   -- Enable automatic indentation

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Set theme
vim.cmd.colorscheme "catppuccin"

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})
vim.lsp.enable('bashls', 'lua_ls', 'gopls', 'basedpyright')
