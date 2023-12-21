vim.opt.runtimepath:append("/opt/homebrew/Cellar/neovim/0.9.4/lib/nvim")

require("nvim-treesitter.configs").setup({
	parser_install_dir = "/opt/homebrew/Cellar/neovim/0.9.4/lib/nvim",
	highlight = {
		enable = true,
	},
})
