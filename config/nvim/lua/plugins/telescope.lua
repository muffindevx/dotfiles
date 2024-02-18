return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'kdheepak/lazygit.nvim', 'nvim-telescope/telescope-ui-select.nvim', {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end
  } },
  config = function()
    local telescope = require('telescope')
    local builtin = require("telescope.builtin")
    local themes = require("telescope.themes")
    local trouble = require("trouble.providers.telescope")

    pcall(telescope.load_extension, 'fzf')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<c-t>"] = trouble.open_with_trouble
          },
          n = {
            ["<c-t>"] = trouble.open_with_trouble
          }
        }
      },
      extensions = {
        ["ui-select"] = { themes.get_dropdown {} }
      }
    })

    telescope.load_extension('lazygit')
    telescope.load_extension('ui-select')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

    vim.keymap.set('n', '<leader>gf', builtin.git_files, {
      desc = 'Search [G]it [F]iles'
    })

    vim.keymap.set('n', '<leader><space>', builtin.buffers, {
      desc = '[ ] Find existing buffers'
    })

    vim.keymap.set('n', '<leader>?', builtin.oldfiles, {
      desc = '[?] Find recently opened filed'
    })

    vim.keymap.set('n', '<leader>s', builtin.live_grep, {
      desc = '[S]earch'
    })

    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(themes.get_dropdown {
        windblend = 10,
        previewer = false
      })
    end, {
      desc = '[/] Fuzzily Search in current buffer'
    })

    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)

    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
  end
}
