return {
  {
    "tpope/vim-fugitive"
  },
  {
    'f-person/git-blame.nvim',
    config = function()
      local gitblame = require('gitblame')

      gitblame.setup({
        enabled = false,
        date_format = '%m/%d/%y %H:%M:%S',
        message_template = '<sha> • <author> • <date> • <summary>'
      })
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      local gitsigns = require("gitsigns")

      gitsigns.setup({
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' }
        }
      })

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  }
}
