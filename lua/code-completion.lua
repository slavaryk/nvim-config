vim.opt.completeopt = {
	"menuone",
	"preview",
	"noselect",
	"noinsert",
}

vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 3 },
		{ name = "nvim_lsp_signature_help" },
		{ name = "nvim_lua", keyword_length = 2 },
		{ name = "buffer", keyword_length = 2 },
		{ name = "vsnip", keyword_length = 2 },
	},

	mapping = {
		-- Go to next suggestion Tab
		["<Tab>"] = cmp.mapping.select_next_item(),
		-- Go to previous suggestion Shift+Tab
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		-- Insert suggestion Enter
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<C-j>"] = cmp.mapping.close(),
		["<C-k>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
	},

	-- Snippets settings
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	-- Window settings
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})
