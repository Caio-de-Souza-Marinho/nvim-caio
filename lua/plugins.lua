return {
	-- add comment.nvim
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
			padding = true,
			sticky = true,
			ignore = nil,
			toggler = {
				line = "gcc",
				block = "gbc",
			},
			opleader = {
				line = "gc",
				block = "gb",
			},
			extra = {
				above = 'gcO',
				below = 'gco',
				eol = 'gcA',
			},
			mappings = {
				basic = true,
				extra = true,
			},
			pre_hook = nil,
			post_hook = nil,
		}
	},

	-- Add plenary.nvim
	{
		'nvim-lua/plenary.nvim',
		lazy = true,
	},

	-- add github copilot
	{
		"github/copilot.vim",
		config = function()
		-- Desabilita o mapeamento de <Tab> para aceitar a sugestão
		vim.g.copilot_no_tab_map = true

		-- Mapeia Ctrl+J para aceitar a sugestão
		vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
	end
	},
}
