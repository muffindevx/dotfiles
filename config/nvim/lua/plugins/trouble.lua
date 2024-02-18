return {
  'folke/trouble.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local trouble = require("trouble")

    vim.keymap.set("n", "<leader>tt", function()
      trouble.toggle()
    end)
    vim.keymap.set("n", "<leader>tp", function()
      trouble.previous({ skip_groups = true, jump = true })
    end)
    vim.keymap.set("n", "<leader>tn", function()
      trouble.next({ skip_groups = true, jump = true })
    end)
  end
}
