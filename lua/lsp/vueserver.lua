local lspconfig = require("lspconfig")

lspconfig.volar.setup({
	on_attach = function()
	end,
	init_options = {
		vue = {
			hybridMode = true,
		},
	},
})
