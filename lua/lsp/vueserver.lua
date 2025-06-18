local lspconfig = require("lspconfig")

lspconfig.volar.setup({
	init_options = {
		vue = {
			hybridMode = true,
		},
	},
})
