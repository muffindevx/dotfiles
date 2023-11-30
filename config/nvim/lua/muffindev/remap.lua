local default_opts = { silent = true, noremap = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, default_opts)
vim.keymap.set("i", "jk", "<ESC>", default_opts)
vim.keymap.set("n", "<leader>f", function ()
  vim.lsp.buf.format()
end)
-- Allow to move multiple lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", default_opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", default_opts)
vim.keymap.set("n", "J", "mzJ`z", default_opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
vim.keymap.set("n", "n", "nzzzv", default_opts)
vim.keymap.set("n", "N", "Nzzzv", default_opts)
vim.keymap.set("i", "<C-s>", ":w<CR><Esc>", default_opts)
vim.keymap.set({"n", "v"}, "<leader>p", "\"_dP", default_opts)
vim.keymap.set("n", "<leader>s", [[:%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>]], default_opts)
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', default_opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover documentation' })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature documentation'})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message'})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = 'Open floating diagnostic message'})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = 'Open diagnostics list'})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,  { desc = '[R]e[n]ame'})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration'})


