-- Mason

require("mason").setup({
	ensure_installed = { "lua_ls", "clangd" },
})

require("mason-lspconfig").setup({})

-- Set up nvim-cmp.
local cmp = require('cmp')
local luasnip = require('luasnip')

local map = {
	['<Tab>'] = cmp.mapping(function(fallback)
		if cmp.visible() then
			if luasnip.expandable() then
				luasnip.expand()
			else
				cmp.confirm({
					select = true,
				})
			end
		else
			fallback()
		end
	end),
	["<S-Tab>"] = cmp.mapping(function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		elseif luasnip.locally_jumpable(1) then
			luasnip.jump(1)
		else
			fallback()
		end
	end, { "i", "s" }),
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	-- ['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	-- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
}

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		luasnip.lsp_expand(args.body) -- For `luasnip` users.
		-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
		-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert(map),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
		{ name = 'buffer' },
		{ name = 'async_path' }
	})
})


-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	-- mapping = cmp.mapping.preset.insert(map),
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	-- mapping = cmp.mapping.preset.insert(map),
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' },
		{ name = 'cmdline' },
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})



-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['lua_ls'].setup {
-- 	capabilities = capabilities
-- }


require('lspconfig')['lua_ls'].setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				enable = false,
			}
		}
	}
}

require('lspconfig')['clangd'].setup {
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--completion-style=detailed",
		"--header-insertion=never",
	}
	
}

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})