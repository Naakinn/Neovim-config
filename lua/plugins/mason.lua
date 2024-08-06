-- Mason

require("mason").setup({
	ensure_installed = { "lua_ls", "clangd" },
})

require("mason-lspconfig").setup({})

