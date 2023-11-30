local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed {
  'tsserver',
  'eslint',
  'tailwindcss',
  'astro',
  'lua_ls',
  'cssls',
  'html'
}

lsp.setup()
