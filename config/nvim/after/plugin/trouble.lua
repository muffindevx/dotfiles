local trouble = require("trouble")

trouble.setup({})

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { desc = "Open  Trouble"})
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { desc = "Show list of troubles for workspace"})
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { desc = "Show list of troubles in the current document"})
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { desc = "Show troubles in current buffer"})
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { desc = "Show quick fix options" })
vim.keymap.set("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", { desc = "Show definitions of the word"})

