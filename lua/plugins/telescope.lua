--
-- require("telescope").setup {
-- 	defaults = {
-- 		mappings = {
-- 			i = { 
-- 				["<C-k>"] = actions.move_selection_previous,
-- 				["<C-j>"] = actions.move_selection_next,
-- 			},
-- 		},
-- 		grep_previewer = nil,
-- 	},
-- }
--
-- require('telescope').load_extension('fzf')
--
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important

local actions = require('telescope.actions')

require('telescope').setup {
	defaults = {
		mappings = {
			i = { 
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
			},
		},
		grep_previewer = nil,
		file_ignore_patterns = { "dep/*", ".cache/*", ".fonts/*", "snap/*" },
	},
	pickers = { 
		find_files = {
			hidden = true,
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
		}
	}
}

require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')

-- vim.keymap.set('n', 'ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fk', builtin.current_buffer_fuzzy_find, {})
-- vim.keymap.set('n', '<leader>fl', builtin.live_grep, {}) 
-- Mappings above are in options.vim
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>fr', builtin.registers, {})

