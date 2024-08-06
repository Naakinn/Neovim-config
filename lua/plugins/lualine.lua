local date = os.date("*t")

require('lualine').setup({
	options = {
		section_separators = { left = '', right = '' },                                                                       
		component_separators = { left = nil, right = nil},
		globalstatus = false,	
		-- for vscode.nvim theme
		-- theme = 'vscode',
	},
	sections = {
		lualine_b = {'%f'},
		lualine_c = {'%r %m'},
		lualine_x = {'encoding'},
		lualine_y = {
			{
				'filetype', 
				padding = { right = 0, left = 1 },
			},
			{ '%L lines of code' },
		},
 		lualine_z = {
			{
				'progress',
				padding = { right = 1, left = 1 },
			},
		},
	},
})

