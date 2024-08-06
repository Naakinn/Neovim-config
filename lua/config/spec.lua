
return {
	-- Completion, lsp, dap
	-- {
	-- 	'windwp/nvim-autopairs',
	-- 	event = "InsertEnter",
	-- 	config = true
	-- 	-- use opts = {} for passing setup options
	-- 	-- this is equalent to setup({}) function
	-- },
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		-- dependencies = {'lukas-reineke/lsp-format.nvim'},
 	},
	{
		'williamboman/mason.nvim',
		dependencies = { 'williamboman/mason-lspconfig.nvim' },
	},
	{
		'hrsh7th/nvim-cmp',
		lazy = false,
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'FelipeLema/cmp-async-path',
		}
	},
	{
		'L3MON4D3/LuaSnip',
		lazy = false,
		dependencies = { 'saadparwaiz1/cmp_luasnip' }
	},
	-- {
	-- 	'p00f/clangd_extensions.nvim',
	-- 	ft = {'c', 'cpp', 'h'},
	-- 	config = function() 
	-- 		require('plugins.clangdconf')
	-- 	end,
	-- },

	{
		'jiangmiao/auto-pairs',
		lazy = false,
	},
	{
		'tummetott/unimpaired.nvim',
		event = 'VeryLazy',
		config = function()
			require('unimpaired').setup()	
		end,
	},
	-- Useful tools
	{
		'akinsho/bufferline.nvim', 
		version = "*", 
		dependencies = 'nvim-tree/nvim-web-devicons',
		lazy = false, 
		config = function() 
			require("plugins.bufferline")
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		lazy = false,
		config = function()
			require("plugins.lualine")
		end,
	},
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		lazy = false, 
		config = function() 
			require("plugins.telescope")
		end,
    },
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require("plugins.fzf-lua")
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = true,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>n", "<cmd>NvimTreeToggle<cr>"},
		},
		config = function()
			require("plugins.nvim-tree") 
		end,
	}, 
	{
		"christoomey/vim-tmux-navigator",
		lazy = true,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	-- Themes 
	{
		"catppuccin/nvim", 
		lazy = true,
		name = "catppuccin", 
	},
	{
		'goolord/alpha-nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require'plugins.alpha'
		end,
	},
	-- Dependencies and unused
	{ 
		'nvim-telescope/telescope-fzf-native.nvim', 
		build = 'make',
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	-- {
	-- 	'rebelot/heirline.nvim',
	-- 	version = "*",
	-- 	lazy = true,
	-- 	priority = 0,
	-- 	config = function()
	-- 		require("plugins.heirline")
	-- 	end,
	-- },
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	lazy = true,
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	-- 	},
	-- 	config = function() 
	-- 		require("neo-tree").setup(); 
	-- 	end,
	-- }, 
}
