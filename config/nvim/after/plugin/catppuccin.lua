local catppuccin = require("catppuccin");

catppuccin.setup({
    flavour = "mocha",
    background = {
        light = "latte",
        dark = "mocha"
    },
    transparent_background = true,
    styles = {
        comments = { "italic" },
        conditionals = { "bold" },
        loops = { "bold" },
        functions = { "bold" },
        keywords = { "bold" },
        types = { "italic", "bold" },
        operators = { "bold" },
        variables = {}
    }
})

vim.cmd.colorscheme "catppuccin"

