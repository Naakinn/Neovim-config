local bufferline = require('bufferline')
require("bufferline").setup{
	options = {
		style_preset = bufferline.style_preset.no_italic,
		themable = true, 
		modified_icon = '+',
		always_show_bufferline = true,
	},
	-- For vscode.nvim theme
	-- highlights = {
	--        fill = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "StatusLineNC" },
	--        },
	--        background = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "StatusLine" },
	--        },
	--        buffer_visible = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "Normal" },
	--        },
	--        buffer_selected = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "Normal" },
	--        },
	--        separator = {
	--            fg = { attribute = "bg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "StatusLine" },
	--        },
	--        separator_selected = {
	--            fg = { attribute = "fg", highlight = "Special" },
	--            bg = { attribute = "bg", highlight = "Normal" },
	--        },
	--        separator_visible = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "StatusLineNC" },
	--        },
	--        close_button = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "StatusLine" },
	--        },
	--        close_button_selected = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "Normal" },
	--        },
	--        close_button_visible = {
	--            fg = { attribute = "fg", highlight = "Normal" },
	--            bg = { attribute = "bg", highlight = "Normal" },
	--        },
	--    },
}
