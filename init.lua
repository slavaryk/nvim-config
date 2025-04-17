local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.cmd("language en_US")

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

-- Sets file change autodetect
vim.cmd([[set autoread]])

-- Sets keys shortcuts
-- <leader>i === \ + i keybinding: opens diagnostic
vim.keymap.set("n", "<leader>i", function()
	vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Toggle diagnostics" })
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Core setup
require("lazy").setup("plugins")
require("colorscheme")
require("code-completion")

-- Plugin configs setup
require("plugin-configs/mason-config")
require("plugin-configs/treesitter")
