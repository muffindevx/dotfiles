local toggleterm = require("toggleterm")
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

toggleterm.setup({
    open_mapping = [[<c-T>]],
    direction = 'horizontal',
    shade_terminals = true
})
