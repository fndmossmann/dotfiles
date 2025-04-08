-- Global config
vim.opt.number = true
vim.opt.scrolloff = 10
vim.g.mapleader= " "

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


