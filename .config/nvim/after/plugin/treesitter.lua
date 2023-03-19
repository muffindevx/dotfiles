local setup = require('nvim-treesitter.configs').setup


setup({
    -- A list of parser names, or "all" (the four listed parsers should always be installed)
    ensure_installed = { "css", "json", "javascript", "typescript", "astro", "c", "lua", "vim", "help" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" },

    highlight = {
        enable = true,
        additional_vim_regex_highliighting = false
    },

    autotag = {
        enable = true
    }
})
