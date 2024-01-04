return {
  'numToStr/Comment.nvim',
  config = function()
    local comment = require("Comment");

    comment.setup({
      toggler = {
        line = 'gcc',
        block = 'gbc'
      },
      opleader = {
        line = 'gc',
        block = 'gb'
      },
      extra = {
        above = 'gc0',
        below = 'gco'
      },
      mappings = {
        basic = true,
        extra = true
      }
    })
  end
}
