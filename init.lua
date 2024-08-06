-- High priority options
-- disable netrw at the very start of your init.lua

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.loader.enable()

-- Vim-plug 
local Plug = vim.fn["plug#"]
vim.call('plug#begin')

Plug('navarasu/onedark.nvim')

vim.call('plug#end')


-- Colorscheme
require("colors.onedark")

-- Load plugins with lazy.nvim
require("config.lazy")


-- Cmp, Mason, Lspconfig, Luasnip
require("plugins.lsp")


-- Keymaps 
-- vim.keymap.set("n", "t", "mao<esc>0<S-d>`a<cmd>delmarks a<cr>j", { desc = "Add new line below" }) 

vim.keymap.set("n", "[n", "<cmd>:noh<cr>", {})
-- Options
vim.opt.inccommand = "split"
vim.cmd([[
	so ~/.config/nvim/lua/options.vim
	set laststatus=3
]])
