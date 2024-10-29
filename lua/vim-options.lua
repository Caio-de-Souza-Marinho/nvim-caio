-- General Neovim settings
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.updatetime = 50

-- Set colorcolumn to 80 for .c files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function()
		vim.opt.colorcolumn = "80"
	end,
})
