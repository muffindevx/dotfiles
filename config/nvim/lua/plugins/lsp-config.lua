return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  }, {
  'williamboman/mason-lspconfig.nvim',
  dependencies = { 'williamboman/mason.nvim' },
  config = function()
    require('mason-lspconfig').setup({
      ensure_installed = { 'lua_ls', 'tsserver', 'html', 'cssls', 'tailwindcss' }
    })
  end
}, {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })

    lspconfig.tsserver.setup({
      capabilities = capabilities
    })

    lspconfig.html.setup({
      capabilities = capabilities
    })

    lspconfig.cssls.setup({
      capabilities = capabilities
    })

    lspconfig.tailwindcss.setup({
      capabilities = capabilities
    })

    lspconfig.quick_lint_js.setup({
      capabilities = capabilities
    })

    lspconfig.gopls.setup({
      capabilities = capabilities
    })

    lspconfig.jsonls.setup({
      capabilities = capabilities
    })

    lspconfig.htmx.setup({
      capabilities = capabilities
    })

    lspconfig.bashls.setup({
      capabilities = capabilities
    })

    lspconfig.rust_analyzer.setup({
      capabilities = capabilities
    })
    -- Diagnostic
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, { desc = '[F]ormat file' })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show documentation' })
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Show documentation' })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = '[G]oto [D]efinition' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = '[G]o to [I]mplementation' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = '[G]o to [R]eferences' })
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { desc = 'Show type definition' })
  end
}
}
