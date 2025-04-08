return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
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
		}
	}
}

