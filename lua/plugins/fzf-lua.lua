require("fzf-lua").setup({ 
	winopts = { 
		preview = {
			scrollbar = false,
			-- delay = false,
		}
	},
	-- fzf = {
	-- 	separator = "TelescopePreviewBorder"
	-- },
	hls = { 
		title = "TelescopeBorder",
		preview_title = "TelescopeBorder",
		preview_border = "TelescopePreviewBorder",
		border = "TelescopePreviewBorder",
	
		help_border = "TelescopePreviewBorder",
		-- cursor = "#708284",
		-- normal = "TelescopePreviewBorder",
		-- cursor = "TelescopePreviewBorder",
	},
	'telescope'
})
vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Fzf Files" })

-- {
--     TelescopeBorder = colors.Red,
--     TelescopePromptBorder = colors.Cyan,
--     TelescopeResultsBorder = colors.Cyan,
--     TelescopePreviewBorder = colors.Cyan,
--     TelescopeMatching = { fg = c.orange, fmt = "bold" },
--     TelescopePromptPrefix = colors.Green,
--     TelescopeSelection =  { bg =c.bg2 },
--     TelescopeSelectionCaret = colors.Yellow
-- }
