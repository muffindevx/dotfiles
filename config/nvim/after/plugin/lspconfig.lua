local lspconfig = require('lspconfig')
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
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

lspconfig.tsserver.setup{}
lspconfig.biome.setup{}
