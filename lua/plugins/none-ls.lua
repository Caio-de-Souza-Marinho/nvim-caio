return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({ filetypes = { "javascript", "typescript", "html", "css" } }),
				null_ls.builtins.formatting.clang_format.with({ filetypes = { "cpp", "c" } }),
				--null_ls.builtins.diagnostics.eslint.with({ filetypes = { "javascript", "typescript" } }),
				--null_ls.builtins.diagnostics.cpplint.with({ filetypes = { "cpp" } }),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
