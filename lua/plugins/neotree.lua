return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})

		-- Function to ensure transparency across Neo-tree
		local function set_transparency()
			vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		end

		-- Apply transparency on startup
		set_transparency()

		-- Ensure transparency stays applied after Neo-tree opens or when switching windows
		vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter", "BufEnter" }, {
			pattern = "*",
			callback = function()
				set_transparency()
			end,
		})

		-- Reapply transparency after any color scheme change
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = function()
				set_transparency()
			end,
		})
	end,
}
