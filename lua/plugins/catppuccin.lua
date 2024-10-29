return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")

		-- Customize line number highlights
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#67db9d", bg = "none", bold = true }) -- Absolute line numbers
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffaf00", bg = "none", bold = true }) -- Current line
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#a3d9d8", bg = "none", bold = true }) -- Relative line numbers above
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#80c5d9", bg = "none", bold = true }) -- Relative line numbers below

		-- Function to set transparency for all windows and floating windows
		local function Transparent()
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Non-current windows
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
			vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
		end

		-- Apply transparency immediately
		Transparent()

		-- Reapply transparency after any color scheme change
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = function()
				Transparent()
			end,
		})
	end,
}
