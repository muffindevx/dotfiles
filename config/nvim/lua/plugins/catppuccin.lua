return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      local catppuccin = require("catppuccin");

      catppuccin.setup({
        flavour = "macchiato",
        background = {
          light = "latte",
          dark = "macchiato"
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
    end
  }
}
