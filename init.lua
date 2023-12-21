local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Sets line number on the left of the window
vim.cmd([[set number]])

-- Sets keys shortcuts
vim.keymap.set("n", "<leader>i", function()
	vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Toggle diagnostics" })

-- Core setup
require("lazy").setup("plugins")
require("mason-config")
require("colorscheme")

-- Plugin configs setup
require("plugin-configs/treesitter")
