-- Global config
vim.g.mapleader= " "
vim.opt.number = true
vim.opt.scrolloff = 10

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

local opts = {}
local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-treesitter/nvim-treesitter", tag = "v1.9.3", build= ":TSUpdate" }
}

require("lazy").setup(plugins, opts)

-- Configure Catppuccin
require("catppuccin").setup({
	flavour = "mocha",
})
vim.cmd.colorscheme "catppuccin"

-- Configure lualine
require("lualine").setup {
	options = {
		-- theme =
		section_separators = { left = '', right = '' },
  		component_separators = { left = '', right = '' }
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "" },
		lualine_y = { "%l:%c", "encoding", "filetype", "lsp_status" },
		lualine_z = { "os.date('%H:%M')", "hostname" },
	},
}

-- Configure Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Configure Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "bash", "c", "go", "jq", "python", "html"},
  highlight = { enable = true },
  indent = { enable = true }
})
