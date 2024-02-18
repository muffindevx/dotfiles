return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'kyazdani42/nvim-web-devicons'
  },
  config = function()
    local lualine = require("lualine");

    lualine.setup({
      options = {
        theme = "catppuccin"
      }, {
        sections = {
          lualine_c = {
            'filename',
            file_status = true,
            newfile_status = true,
            path = 4,
            symbols = {
              modified = '[+]',
              readonly = '[-]'
            }
          }
        }
      }
    })
  end
}
