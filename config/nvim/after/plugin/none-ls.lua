local null_ls = require("null-ls")

null_ls.setup({
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.biome.with({
    args = {
      'check',
      '--apply-safe',
      '--formatter-enabled=true',
      '--organize-imports-enabled=true',
      '--skip-errors',
      '$FILENAME'
    }
  }),
})
