local telescope = require("telescope")
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local load_extension = require("telescope").load_extension
local trouble = require("trouble.providers.telescope")

pcall(load_extension, 'fzf')

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
    ["ui-select"] = {
      themes.get_dropdown {}
    }
  }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sw', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = '[S]earch current [W]ord'})
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened filed' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep'})
vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(themes.get_dropdown {
    windblend = 10,
    previewer = false
  })
end, { desc = '[/] Fuzzily Search in current buffer' })

vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = '[G]oto [D]efinition'})
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]oto [R]eferences'})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = '[G]oto [Implementation]'})
vim.keymap.set('n', 'td', builtin.lsp_type_definitions, { desc = '[T]ype [D]efinition'})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics'})
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = '[D]ocument [S]ymbols'})
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, { desc = '[W]orkspace [S]ymbols'})
