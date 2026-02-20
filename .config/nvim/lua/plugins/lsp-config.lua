return {
	-- Setup mason package manager for LSPs
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	-- Setup mason-lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"lua_ls",
					"gopls",
					"basedpyright"
				}
			})
		end

	},
	-- Setup NeoVIM LSPConfig
	--{
	--	"neovim/nvim-lspconfig",
	--	config = function()
	--		local lspconfig = vim.lsp.config()
	--		lspconfig.lua_ls.setup({})
	--		lspconfig.bashls.setup({})
	--		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	--		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	--		vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
	--	end
	--}
}
