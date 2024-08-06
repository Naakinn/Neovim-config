-- Default options:
require('kanagawa').setup({
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = false },
    keywordStyle = { italic = false},
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
